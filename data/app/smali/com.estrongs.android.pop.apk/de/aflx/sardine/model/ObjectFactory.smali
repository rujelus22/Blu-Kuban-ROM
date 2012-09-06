.class public Lde/aflx/sardine/model/ObjectFactory;
.super Ljava/lang/Object;


# static fields
.field private static final _Depth_QNAME:Lde/aflx/sardine/util/QName;

.field private static final _Dst_QNAME:Lde/aflx/sardine/util/QName;

.field private static final _Href_QNAME:Lde/aflx/sardine/util/QName;

.field private static final _Responsedescription_QNAME:Lde/aflx/sardine/util/QName;

.field private static final _Src_QNAME:Lde/aflx/sardine/util/QName;

.field private static final _Status_QNAME:Lde/aflx/sardine/util/QName;

.field private static final _Timeout_QNAME:Lde/aflx/sardine/util/QName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, "DAV:"

    const-string v2, "status"

    invoke-direct {v0, v1, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lde/aflx/sardine/model/ObjectFactory;->_Status_QNAME:Lde/aflx/sardine/util/QName;

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, "DAV:"

    const-string v2, "dst"

    invoke-direct {v0, v1, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lde/aflx/sardine/model/ObjectFactory;->_Dst_QNAME:Lde/aflx/sardine/util/QName;

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, "DAV:"

    const-string v2, "src"

    invoke-direct {v0, v1, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lde/aflx/sardine/model/ObjectFactory;->_Src_QNAME:Lde/aflx/sardine/util/QName;

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, "DAV:"

    const-string v2, "timeout"

    invoke-direct {v0, v1, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lde/aflx/sardine/model/ObjectFactory;->_Timeout_QNAME:Lde/aflx/sardine/util/QName;

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, "DAV:"

    const-string v2, "depth"

    invoke-direct {v0, v1, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lde/aflx/sardine/model/ObjectFactory;->_Depth_QNAME:Lde/aflx/sardine/util/QName;

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, "DAV:"

    const-string v2, "responsedescription"

    invoke-direct {v0, v1, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lde/aflx/sardine/model/ObjectFactory;->_Responsedescription_QNAME:Lde/aflx/sardine/util/QName;

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, "DAV:"

    const-string v2, "href"

    invoke-direct {v0, v1, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lde/aflx/sardine/model/ObjectFactory;->_Href_QNAME:Lde/aflx/sardine/util/QName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createActivelock()Lde/aflx/sardine/model/Activelock;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Activelock;

    invoke-direct {v0}, Lde/aflx/sardine/model/Activelock;-><init>()V

    return-object v0
.end method

.method public createAllprop()Lde/aflx/sardine/model/Allprop;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Allprop;

    invoke-direct {v0}, Lde/aflx/sardine/model/Allprop;-><init>()V

    return-object v0
.end method

.method public createCollection()Lde/aflx/sardine/model/Collection;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Collection;

    invoke-direct {v0}, Lde/aflx/sardine/model/Collection;-><init>()V

    return-object v0
.end method

.method public createCreationdate()Lde/aflx/sardine/model/Creationdate;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Creationdate;

    invoke-direct {v0}, Lde/aflx/sardine/model/Creationdate;-><init>()V

    return-object v0
.end method

.method public createDisplayname()Lde/aflx/sardine/model/Displayname;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Displayname;

    invoke-direct {v0}, Lde/aflx/sardine/model/Displayname;-><init>()V

    return-object v0
.end method

.method public createError()Lde/aflx/sardine/model/Error;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Error;

    invoke-direct {v0}, Lde/aflx/sardine/model/Error;-><init>()V

    return-object v0
.end method

.method public createExclusive()Lde/aflx/sardine/model/Exclusive;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Exclusive;

    invoke-direct {v0}, Lde/aflx/sardine/model/Exclusive;-><init>()V

    return-object v0
.end method

.method public createGetcontentlanguage()Lde/aflx/sardine/model/Getcontentlanguage;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Getcontentlanguage;

    invoke-direct {v0}, Lde/aflx/sardine/model/Getcontentlanguage;-><init>()V

    return-object v0
.end method

.method public createGetcontentlength()Lde/aflx/sardine/model/Getcontentlength;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Getcontentlength;

    invoke-direct {v0}, Lde/aflx/sardine/model/Getcontentlength;-><init>()V

    return-object v0
.end method

.method public createGetcontenttype()Lde/aflx/sardine/model/Getcontenttype;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Getcontenttype;

    invoke-direct {v0}, Lde/aflx/sardine/model/Getcontenttype;-><init>()V

    return-object v0
.end method

.method public createGetetag()Lde/aflx/sardine/model/Getetag;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Getetag;

    invoke-direct {v0}, Lde/aflx/sardine/model/Getetag;-><init>()V

    return-object v0
.end method

.method public createGetlastmodified()Lde/aflx/sardine/model/Getlastmodified;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Getlastmodified;

    invoke-direct {v0}, Lde/aflx/sardine/model/Getlastmodified;-><init>()V

    return-object v0
.end method

.method public createKeepalive()Lde/aflx/sardine/model/Keepalive;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Keepalive;

    invoke-direct {v0}, Lde/aflx/sardine/model/Keepalive;-><init>()V

    return-object v0
.end method

.method public createLink()Lde/aflx/sardine/model/Link;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Link;

    invoke-direct {v0}, Lde/aflx/sardine/model/Link;-><init>()V

    return-object v0
.end method

.method public createLockdiscovery()Lde/aflx/sardine/model/Lockdiscovery;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Lockdiscovery;

    invoke-direct {v0}, Lde/aflx/sardine/model/Lockdiscovery;-><init>()V

    return-object v0
.end method

.method public createLockentry()Lde/aflx/sardine/model/Lockentry;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Lockentry;

    invoke-direct {v0}, Lde/aflx/sardine/model/Lockentry;-><init>()V

    return-object v0
.end method

.method public createLockinfo()Lde/aflx/sardine/model/Lockinfo;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Lockinfo;

    invoke-direct {v0}, Lde/aflx/sardine/model/Lockinfo;-><init>()V

    return-object v0
.end method

.method public createLockscope()Lde/aflx/sardine/model/Lockscope;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Lockscope;

    invoke-direct {v0}, Lde/aflx/sardine/model/Lockscope;-><init>()V

    return-object v0
.end method

.method public createLocktoken()Lde/aflx/sardine/model/Locktoken;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Locktoken;

    invoke-direct {v0}, Lde/aflx/sardine/model/Locktoken;-><init>()V

    return-object v0
.end method

.method public createLocktype()Lde/aflx/sardine/model/Locktype;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Locktype;

    invoke-direct {v0}, Lde/aflx/sardine/model/Locktype;-><init>()V

    return-object v0
.end method

.method public createMultistatus()Lde/aflx/sardine/model/Multistatus;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Multistatus;

    invoke-direct {v0}, Lde/aflx/sardine/model/Multistatus;-><init>()V

    return-object v0
.end method

.method public createOmit()Lde/aflx/sardine/model/Omit;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Omit;

    invoke-direct {v0}, Lde/aflx/sardine/model/Omit;-><init>()V

    return-object v0
.end method

.method public createOwner()Lde/aflx/sardine/model/Owner;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Owner;

    invoke-direct {v0}, Lde/aflx/sardine/model/Owner;-><init>()V

    return-object v0
.end method

.method public createProp()Lde/aflx/sardine/model/Prop;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Prop;

    invoke-direct {v0}, Lde/aflx/sardine/model/Prop;-><init>()V

    return-object v0
.end method

.method public createPropertybehavior()Lde/aflx/sardine/model/Propertybehavior;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Propertybehavior;

    invoke-direct {v0}, Lde/aflx/sardine/model/Propertybehavior;-><init>()V

    return-object v0
.end method

.method public createPropertyupdate()Lde/aflx/sardine/model/Propertyupdate;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Propertyupdate;

    invoke-direct {v0}, Lde/aflx/sardine/model/Propertyupdate;-><init>()V

    return-object v0
.end method

.method public createPropfind()Lde/aflx/sardine/model/Propfind;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Propfind;

    invoke-direct {v0}, Lde/aflx/sardine/model/Propfind;-><init>()V

    return-object v0
.end method

.method public createPropname()Lde/aflx/sardine/model/Propname;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Propname;

    invoke-direct {v0}, Lde/aflx/sardine/model/Propname;-><init>()V

    return-object v0
.end method

.method public createPropstat()Lde/aflx/sardine/model/Propstat;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Propstat;

    invoke-direct {v0}, Lde/aflx/sardine/model/Propstat;-><init>()V

    return-object v0
.end method

.method public createRemove()Lde/aflx/sardine/model/Remove;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Remove;

    invoke-direct {v0}, Lde/aflx/sardine/model/Remove;-><init>()V

    return-object v0
.end method

.method public createResourcetype()Lde/aflx/sardine/model/Resourcetype;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Resourcetype;

    invoke-direct {v0}, Lde/aflx/sardine/model/Resourcetype;-><init>()V

    return-object v0
.end method

.method public createResponse()Lde/aflx/sardine/model/Response;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Response;

    invoke-direct {v0}, Lde/aflx/sardine/model/Response;-><init>()V

    return-object v0
.end method

.method public createSet()Lde/aflx/sardine/model/Set;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Set;

    invoke-direct {v0}, Lde/aflx/sardine/model/Set;-><init>()V

    return-object v0
.end method

.method public createShared()Lde/aflx/sardine/model/Shared;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Shared;

    invoke-direct {v0}, Lde/aflx/sardine/model/Shared;-><init>()V

    return-object v0
.end method

.method public createSource()Lde/aflx/sardine/model/Source;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Source;

    invoke-direct {v0}, Lde/aflx/sardine/model/Source;-><init>()V

    return-object v0
.end method

.method public createSupportedlock()Lde/aflx/sardine/model/Supportedlock;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Supportedlock;

    invoke-direct {v0}, Lde/aflx/sardine/model/Supportedlock;-><init>()V

    return-object v0
.end method

.method public createWrite()Lde/aflx/sardine/model/Write;
    .registers 2

    new-instance v0, Lde/aflx/sardine/model/Write;

    invoke-direct {v0}, Lde/aflx/sardine/model/Write;-><init>()V

    return-object v0
.end method
