<div class="box">
    <h1 class="page-subheading">Data files</h1>
    <form action="{$link->getModuleLink('gdpr', 'DataFiles')}" method="post">
        {foreach from=$file_name item=name}
            <div class="form-group">
                <label>{$name['data_file_name']}</label>
                <p>{$name['description']}</p>
                <div class="radio">
                    <label><input type="radio" name="{$name['id_admin_gdpr_data_file']}" {if isset($agreement) && $agreement[$name['id_admin_gdpr_data_file']] eq 1}checked="checked"{/if} value='1'>Allow</label>
                </div>
                <div class="radio">
                    <label><input type="radio" name="{$name['id_admin_gdpr_data_file']}" {if isset($agreement) && $agreement[$name['id_admin_gdpr_data_file']] eq 0}checked="checked"{/if} value='0'>Disallow</label>
                </div>
            </div>
        {/foreach}
        <button name="data-files-form" type="submit" class="btn btn-default">Save</button>
    </form>
</div>
<ul class="footer_links clearfix">
    <li><a class="btn btn-default button button-small" href="#"><span>View Account Data</span></a></li>
</ul>