package com.adobe.aem.guides.wknd.core.models.impl;
 
import static org.apache.sling.api.resource.ResourceResolver.PROPERTY_RESOURCE_TYPE;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.models.annotations.injectorspecific.ValueMapValue;
import com.adobe.aem.guides.wknd.core.models.Testbackend;
import org.apache.sling.api.resource.Resource;
import org.apache.sling.models.annotations.*;
import java.util.*;
import javax.inject.Inject;

 
// @Model(adaptables = Resource.class,
//        adapters = Testbackend.class,
//         defaultInjectionStrategy = DefaultInjectionStrategy.OPTIONAL)

@Model(adaptables = {Resource.class,SlingHttpServletRequest.class},
        adapters = Testbackend.class,
        defaultInjectionStrategy = DefaultInjectionStrategy.OPTIONAL
)
public class TestbackendImpl implements Testbackend
{

 
@ValueMapValue 
private String name;


 
@ValueMapValue
private String di;

 
@Override
public String getName()
{
 return name;
}


@Override
public String getDescription()
{
 return di;
}

}