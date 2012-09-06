.class public Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlContactsGDataParser.java"


# static fields
.field private static final GD_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/g/2005#"

.field public static final IM_PROTOCOL_AIM:Ljava/lang/String; = "http://schemas.google.com/g/2005#AIM"

.field public static final IM_PROTOCOL_GOOGLE_TALK:Ljava/lang/String; = "http://schemas.google.com/g/2005#GOOGLE_TALK"

.field public static final IM_PROTOCOL_ICQ:Ljava/lang/String; = "http://schemas.google.com/g/2005#ICQ"

.field public static final IM_PROTOCOL_JABBER:Ljava/lang/String; = "http://schemas.google.com/g/2005#JABBER"

.field public static final IM_PROTOCOL_MSN:Ljava/lang/String; = "http://schemas.google.com/g/2005#MSN"

.field public static final IM_PROTOCOL_NETMEETING:Ljava/lang/String; = "http://schemas.google.com/g/2005#netmeeting"

.field public static final IM_PROTOCOL_QQ:Ljava/lang/String; = "http://schemas.google.com/g/2005#QQ"

.field public static final IM_PROTOCOL_SKYPE:Ljava/lang/String; = "http://schemas.google.com/g/2005#SKYPE"

.field private static final IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable; = null

.field public static final IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable; = null

.field public static final IM_PROTOCOL_YAHOO:Ljava/lang/String; = "http://schemas.google.com/g/2005#YAHOO"

.field public static final LINK_REL_PHOTO:Ljava/lang/String; = "http://schemas.google.com/contacts/2008/rel#photo"

.field public static final NAMESPACE_CONTACTS:Ljava/lang/String; = "gContact"

.field public static final NAMESPACE_CONTACTS_URI:Ljava/lang/String; = "http://schemas.google.com/contact/2008"

.field private static final REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_EMAIL:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_EVENT:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_IM:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_JOT:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_PHONE:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_POSTAL:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_RELATION:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable; = null

.field public static final TYPESTRING_ASSISTANT:Ljava/lang/String; = "http://schemas.google.com/g/2005#assistant"

.field public static final TYPESTRING_CALENDARLINK_FREEBUSY:Ljava/lang/String; = "free-busy"

.field public static final TYPESTRING_CALENDARLINK_HOME:Ljava/lang/String; = "home"

.field public static final TYPESTRING_CALENDARLINK_WORK:Ljava/lang/String; = "work"

.field public static final TYPESTRING_CALLBACK:Ljava/lang/String; = "http://schemas.google.com/g/2005#callback"

.field public static final TYPESTRING_CAR:Ljava/lang/String; = "http://schemas.google.com/g/2005#car"

.field public static final TYPESTRING_COMPANY_MAIN:Ljava/lang/String; = "http://schemas.google.com/g/2005#company_main"

.field public static final TYPESTRING_EVENT_ANNIVERARY:Ljava/lang/String; = "anniversary"

.field public static final TYPESTRING_EVENT_OTHER:Ljava/lang/String; = "other"

.field public static final TYPESTRING_EXTERNALID_ACCOUNT:Ljava/lang/String; = "account"

.field public static final TYPESTRING_EXTERNALID_CUSTOMER:Ljava/lang/String; = "customer"

.field public static final TYPESTRING_EXTERNALID_NETWORK:Ljava/lang/String; = "network"

.field public static final TYPESTRING_EXTERNALID_ORGANIZATION:Ljava/lang/String; = "organization"

.field public static final TYPESTRING_HOME:Ljava/lang/String; = "http://schemas.google.com/g/2005#home"

.field public static final TYPESTRING_HOME_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#home_fax"

.field public static final TYPESTRING_ISDN:Ljava/lang/String; = "http://schemas.google.com/g/2005#isdn"

.field public static final TYPESTRING_JOT_HOME:Ljava/lang/String; = "home"

.field public static final TYPESTRING_JOT_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final TYPESTRING_JOT_OTHER:Ljava/lang/String; = "other"

.field public static final TYPESTRING_JOT_USER:Ljava/lang/String; = "user"

.field public static final TYPESTRING_JOT_WORK:Ljava/lang/String; = "work"

.field public static final TYPESTRING_MAIN:Ljava/lang/String; = "http://schemas.google.com/g/2005#main"

.field public static final TYPESTRING_MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#mobile"

.field public static final TYPESTRING_OTHER:Ljava/lang/String; = "http://schemas.google.com/g/2005#other"

.field public static final TYPESTRING_OTHER_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#other_fax"

.field public static final TYPESTRING_PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#pager"

.field public static final TYPESTRING_PRIORITY_HIGH:Ljava/lang/String; = "high"

.field public static final TYPESTRING_PRIORITY_LOW:Ljava/lang/String; = "low"

.field public static final TYPESTRING_PRIORITY_NORMAL:Ljava/lang/String; = "normal"

.field public static final TYPESTRING_RADIO:Ljava/lang/String; = "http://schemas.google.com/g/2005#radio"

.field public static final TYPESTRING_RELATION_ASSISTANT:Ljava/lang/String; = "assistant"

.field public static final TYPESTRING_RELATION_BROTHER:Ljava/lang/String; = "brother"

.field public static final TYPESTRING_RELATION_CHILD:Ljava/lang/String; = "child"

.field public static final TYPESTRING_RELATION_DOMESTICPARTNER:Ljava/lang/String; = "domestic-partner"

.field public static final TYPESTRING_RELATION_FATHER:Ljava/lang/String; = "father"

.field public static final TYPESTRING_RELATION_FRIEND:Ljava/lang/String; = "friend"

.field public static final TYPESTRING_RELATION_MANAGER:Ljava/lang/String; = "manager"

.field public static final TYPESTRING_RELATION_MOTHER:Ljava/lang/String; = "mother"

.field public static final TYPESTRING_RELATION_PARENT:Ljava/lang/String; = "parent"

.field public static final TYPESTRING_RELATION_PARTNER:Ljava/lang/String; = "partner"

.field public static final TYPESTRING_RELATION_REFERREDBY:Ljava/lang/String; = "referred-by"

.field public static final TYPESTRING_RELATION_RELATIVE:Ljava/lang/String; = "relative"

.field public static final TYPESTRING_RELATION_SISTER:Ljava/lang/String; = "sister"

.field public static final TYPESTRING_RELATION_SPOUSE:Ljava/lang/String; = "spouse"

.field public static final TYPESTRING_SENSITIVITY_CONFIDENTIAL:Ljava/lang/String; = "confidential"

.field public static final TYPESTRING_SENSITIVITY_NORMAL:Ljava/lang/String; = "normal"

.field public static final TYPESTRING_SENSITIVITY_PERSONAL:Ljava/lang/String; = "personal"

.field public static final TYPESTRING_SENSITIVITY_PRIVATE:Ljava/lang/String; = "private"

.field public static final TYPESTRING_TELEX:Ljava/lang/String; = "http://schemas.google.com/g/2005#telex"

.field public static final TYPESTRING_TTY_TDD:Ljava/lang/String; = "http://schemas.google.com/g/2005#tty_tdd"

.field public static final TYPESTRING_WEBSITE_BLOG:Ljava/lang/String; = "blog"

.field public static final TYPESTRING_WEBSITE_FTP:Ljava/lang/String; = "ftp"

.field public static final TYPESTRING_WEBSITE_HOME:Ljava/lang/String; = "home"

.field public static final TYPESTRING_WEBSITE_HOMEPAGE:Ljava/lang/String; = "home-page"

.field public static final TYPESTRING_WEBSITE_OTHER:Ljava/lang/String; = "other"

.field public static final TYPESTRING_WEBSITE_PROFILE:Ljava/lang/String; = "profile"

.field public static final TYPESTRING_WEBSITE_WORK:Ljava/lang/String; = "work"

.field public static final TYPESTRING_WORK:Ljava/lang/String; = "http://schemas.google.com/g/2005#work"

.field public static final TYPESTRING_WORK_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_fax"

.field public static final TYPESTRING_WORK_MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_mobile"

.field public static final TYPESTRING_WORK_PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_pager"

.field public static final TYPE_TO_REL_CALENDARLINK:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_EVENT:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_EXTERNALID:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_IM:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_JOT:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_PRIORITY:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_RELATION:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_SENSITIVITY:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_WEBSITE:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 150
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 151
    .local v0, map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    .line 155
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

    .line 157
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 158
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "http://schemas.google.com/g/2005#mobile"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "http://schemas.google.com/g/2005#pager"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "http://schemas.google.com/g/2005#home_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "http://schemas.google.com/g/2005#work_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "http://schemas.google.com/g/2005#assistant"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "http://schemas.google.com/g/2005#callback"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "http://schemas.google.com/g/2005#car"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "http://schemas.google.com/g/2005#company_main"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "http://schemas.google.com/g/2005#isdn"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "http://schemas.google.com/g/2005#main"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "http://schemas.google.com/g/2005#other_fax"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "http://schemas.google.com/g/2005#radio"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "http://schemas.google.com/g/2005#telex"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "http://schemas.google.com/g/2005#tty_tdd"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "http://schemas.google.com/g/2005#work_mobile"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "http://schemas.google.com/g/2005#work_pager"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    .line 178
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

    .line 180
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 181
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    .line 185
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

    .line 187
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 188
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    .line 192
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_IM:Ljava/util/Hashtable;

    .line 194
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 195
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    .line 198
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

    .line 200
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 201
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#AIM"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "http://schemas.google.com/g/2005#MSN"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "http://schemas.google.com/g/2005#YAHOO"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "http://schemas.google.com/g/2005#SKYPE"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "http://schemas.google.com/g/2005#QQ"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "http://schemas.google.com/g/2005#GOOGLE_TALK"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "http://schemas.google.com/g/2005#ICQ"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "http://schemas.google.com/g/2005#JABBER"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "http://schemas.google.com/g/2005#netmeeting"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    .line 212
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

    .line 214
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 215
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "free-busy"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable;

    .line 219
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_CALENDARLINK:Ljava/util/Hashtable;

    .line 221
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 222
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "anniversary"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EVENT:Ljava/util/Hashtable;

    .line 225
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EVENT:Ljava/util/Hashtable;

    .line 227
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 228
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "account"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "customer"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "network"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "organization"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable;

    .line 233
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EXTERNALID:Ljava/util/Hashtable;

    .line 235
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 236
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v1, "keywords"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "user"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_JOT:Ljava/util/Hashtable;

    .line 242
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_JOT:Ljava/util/Hashtable;

    .line 244
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 245
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "high"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "normal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "low"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable;

    .line 249
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PRIORITY:Ljava/util/Hashtable;

    .line 251
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 252
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "assistant"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "brother"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "child"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "domestic-partner"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "father"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "friend"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "manager"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "mother"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "parent"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "partner"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "referred-by"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "relative"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "sister"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "spouse"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_RELATION:Ljava/util/Hashtable;

    .line 267
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_RELATION:Ljava/util/Hashtable;

    .line 269
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 270
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "confidential"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v1, "normal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "personal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "private"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable;

    .line 279
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_SENSITIVITY:Ljava/util/Hashtable;

    .line 281
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 282
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "blog"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "home-page"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v1, "profile"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "ftp"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable;

    .line 291
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_WEBSITE:Ljava/util/Hashtable;

    .line 293
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 318
    return-void
.end method

.method private static handleEventSubElement(Lcom/google/wireless/gdata2/contacts/data/Event;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .parameter "element"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 562
    .local v0, depth:I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, tag:Ljava/lang/String;
    if-nez v2, :cond_b

    .line 570
    return-void

    .line 564
    :cond_b
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 565
    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->STARTTIME:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, startDate:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Event;->setStartDate(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static handleNameSubElement(Lcom/google/wireless/gdata2/contacts/data/Name;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .parameter "element"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 575
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 577
    .local v0, depth:I
    :cond_5
    :goto_5
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, tag:Ljava/lang/String;
    if-nez v1, :cond_c

    .line 601
    return-void

    .line 579
    :cond_c
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_GIVENNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 580
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenNameYomi(Ljava/lang/String;)V

    .line 582
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenName(Ljava/lang/String;)V

    goto :goto_5

    .line 583
    :cond_25
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_ADDITIONALNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 584
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalNameYomi(Ljava/lang/String;)V

    .line 586
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalName(Ljava/lang/String;)V

    goto :goto_5

    .line 587
    :cond_3e
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FAMILYNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 588
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyNameYomi(Ljava/lang/String;)V

    .line 590
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyName(Ljava/lang/String;)V

    goto :goto_5

    .line 591
    :cond_57
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 592
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNamePrefix(Ljava/lang/String;)V

    goto :goto_5

    .line 593
    :cond_67
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_SUFFIX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 594
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNameSuffix(Ljava/lang/String;)V

    goto :goto_5

    .line 595
    :cond_77
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FULLNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 596
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFullNameYomi(Ljava/lang/String;)V

    .line 598
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFullName(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private static handleOrganizationSubElement(Lcom/google/wireless/gdata2/contacts/data/Organization;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .parameter "element"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 537
    .local v0, depth:I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, tag:Ljava/lang/String;
    if-nez v1, :cond_b

    .line 555
    return-void

    .line 539
    :cond_b
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_NAME:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 540
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setName(Ljava/lang/String;)V

    goto :goto_4

    .line 541
    :cond_1b
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 542
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setTitle(Ljava/lang/String;)V

    goto :goto_4

    .line 543
    :cond_2b
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_DEPARTMENT:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 544
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgDepartment(Ljava/lang/String;)V

    goto :goto_4

    .line 545
    :cond_3b
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_JOBDESC:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 546
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgJobDescription(Ljava/lang/String;)V

    goto :goto_4

    .line 547
    :cond_4b
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_SYMBOL:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 548
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgSymbol(Ljava/lang/String;)V

    goto :goto_4

    .line 549
    :cond_5b
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHERE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 550
    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUESTRING:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, where:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setWhere(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static handleStructuredPostalAddressSubElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .parameter "element"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 608
    .local v0, depth:I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, tag:Ljava/lang/String;
    if-nez v1, :cond_b

    .line 628
    return-void

    .line 610
    :cond_b
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_STREET:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 611
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setStreet(Ljava/lang/String;)V

    goto :goto_4

    .line 612
    :cond_1b
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POBOX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 613
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPobox(Ljava/lang/String;)V

    goto :goto_4

    .line 614
    :cond_2b
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_NEIGHBORHOOD:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 615
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setNeighborhood(Ljava/lang/String;)V

    goto :goto_4

    .line 616
    :cond_3b
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_CITY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 617
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCity(Ljava/lang/String;)V

    goto :goto_4

    .line 618
    :cond_4b
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_REGION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 619
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setRegion(Ljava/lang/String;)V

    goto :goto_4

    .line 620
    :cond_5b
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POSTCODE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 621
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPostcode(Ljava/lang/String;)V

    goto :goto_4

    .line 622
    :cond_6b
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_COUNTRY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 623
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCountry(Ljava/lang/String;)V

    goto :goto_4

    .line 624
    :cond_7b
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_FORMATTEDADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 625
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setFormattedAddress(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private static parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V
    .registers 6
    .parameter "element"
    .parameter "parser"
    .parameter "relToTypeMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {p0, p1, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 502
    const-string v0, "true"

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->PRIMARY:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->setIsPrimary(Z)V

    .line 503
    return-void
.end method

.method private parseExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V
    .registers 5
    .parameter "extendedProperty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 639
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setName(Ljava/lang/String;)V

    .line 640
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setValue(Ljava/lang/String;)V

    .line 641
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractFirstChildTextIgnoreRest(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setXmlBlob(Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method private static parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V
    .registers 7
    .parameter "element"
    .parameter "parser"
    .parameter "relToTypeMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 507
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, rel:Ljava/lang/String;
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_11

    if-eqz v1, :cond_15

    :cond_11
    if-eqz v0, :cond_17

    if-eqz v1, :cond_17

    .line 512
    :cond_15
    const-string v1, "http://schemas.google.com/g/2005#other"

    .line 515
    :cond_17
    if-eqz v1, :cond_20

    .line 516
    invoke-static {v1, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setType(B)V

    .line 518
    :cond_20
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setLabel(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private static relToType(Ljava/lang/String;Ljava/util/Hashtable;)B
    .registers 6
    .parameter "rel"
    .parameter "relToTypeMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 523
    if-eqz p0, :cond_2c

    .line 524
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 525
    .local v0, type:Ljava/lang/Object;
    if-nez v0, :cond_25

    .line 526
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown rel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    :cond_25
    check-cast v0, Ljava/lang/Byte;

    .end local v0           #type:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 530
    :goto_2b
    return v1

    :cond_2c
    const/4 v1, -0x1

    goto :goto_2b
.end method

.method private static swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 8
    .parameter "originalMap"

    .prologue
    .line 296
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 297
    .local v2, newMap:Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 298
    .local v0, enumeration:Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 299
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 300
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 301
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 302
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was already encountered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    :cond_3c
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 307
    .end local v1           #key:Ljava/lang/Object;
    .end local v3           #value:Ljava/lang/Object;
    :cond_40
    return-object v2
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .registers 2

    .prologue
    .line 333
    new-instance v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .registers 2

    .prologue
    .line 325
    new-instance v0, Lcom/google/wireless/gdata2/contacts/data/ContactsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 30
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 339
    .local v17, parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    move/from16 v25, v0

    if-nez v25, :cond_14

    .line 340
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "Expected ContactEntry!"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_14
    move-object/from16 v4, p1

    .line 342
    check-cast v4, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 343
    .local v4, contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 344
    .local v14, name:Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v15

    .line 346
    .local v15, ns:Ljava/lang/String;
    const-string v25, "http://schemas.google.com/g/2005"

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b4

    .line 347
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6c

    .line 348
    new-instance v5, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-direct {v5}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;-><init>()V

    .line 349
    .local v5, emailAddress:Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v5, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 350
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL_DISPLAYNAME:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setDisplayName(Ljava/lang/String;)V

    .line 352
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setAddress(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v4, v5}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEmailAddress(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V

    .line 487
    .end local v5           #emailAddress:Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
    :cond_6b
    :goto_6b
    return-void

    .line 355
    :cond_6c
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_DELETED:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7e

    .line 356
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDeleted(Z)V

    goto :goto_6b

    .line 357
    :cond_7e
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_IM:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10a

    .line 358
    new-instance v10, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-direct {v10}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;-><init>()V

    .line 359
    .local v10, imAddress:Lcom/google/wireless/gdata2/contacts/data/ImAddress;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 360
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setAddress(Ljava/lang/String;)V

    .line 362
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setLabel(Ljava/lang/String;)V

    .line 364
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PROTOCOL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 366
    .local v21, protocolString:Ljava/lang/String;
    if-nez v21, :cond_de

    .line 367
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 368
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    .line 379
    :goto_da
    invoke-virtual {v4, v10}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addImAddress(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V

    goto :goto_6b

    .line 370
    :cond_de
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Byte;

    .line 371
    .local v20, predefinedProtocol:Ljava/lang/Byte;
    if-nez v20, :cond_f9

    .line 372
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 373
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_da

    .line 375
    :cond_f9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Byte;->byteValue()B

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 376
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_da

    .line 380
    .end local v10           #imAddress:Lcom/google/wireless/gdata2/contacts/data/ImAddress;
    .end local v20           #predefinedProtocol:Ljava/lang/Byte;
    .end local v21           #protocolString:Ljava/lang/String;
    :cond_10a
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_132

    .line 381
    new-instance v19, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-direct/range {v19 .. v19}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;-><init>()V

    .line 382
    .local v19, postalAddress:Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 383
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleStructuredPostalAddressSubElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 384
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPostalAddress(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V

    goto/16 :goto_6b

    .line 385
    .end local v19           #postalAddress:Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;
    :cond_132
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PHONENUMBER:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15e

    .line 386
    new-instance v18, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-direct/range {v18 .. v18}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;-><init>()V

    .line 387
    .local v18, phoneNumber:Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 388
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPhoneNumber(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V

    goto/16 :goto_6b

    .line 390
    .end local v18           #phoneNumber:Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
    :cond_15e
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORGANIZATION:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_182

    .line 391
    new-instance v16, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-direct/range {v16 .. v16}, Lcom/google/wireless/gdata2/contacts/data/Organization;-><init>()V

    .line 392
    .local v16, organization:Lcom/google/wireless/gdata2/contacts/data/Organization;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 393
    invoke-static/range {v16 .. v17}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleOrganizationSubElement(Lcom/google/wireless/gdata2/contacts/data/Organization;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 394
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addOrganization(Lcom/google/wireless/gdata2/contacts/data/Organization;)V

    goto/16 :goto_6b

    .line 395
    .end local v16           #organization:Lcom/google/wireless/gdata2/contacts/data/Organization;
    :cond_182
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EXTENDEDPROPERTY:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19b

    .line 396
    new-instance v7, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-direct {v7}, Lcom/google/wireless/gdata2/data/ExtendedProperty;-><init>()V

    .line 397
    .local v7, extendedProperty:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    .line 398
    invoke-virtual {v4, v7}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    goto/16 :goto_6b

    .line 399
    .end local v7           #extendedProperty:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    :cond_19b
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6b

    .line 400
    new-instance v13, Lcom/google/wireless/gdata2/contacts/data/Name;

    invoke-direct {v13}, Lcom/google/wireless/gdata2/contacts/data/Name;-><init>()V

    .line 401
    .local v13, n:Lcom/google/wireless/gdata2/contacts/data/Name;
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleNameSubElement(Lcom/google/wireless/gdata2/contacts/data/Name;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 402
    invoke-virtual {v4, v13}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setName(Lcom/google/wireless/gdata2/contacts/data/Name;)V

    goto/16 :goto_6b

    .line 404
    .end local v13           #n:Lcom/google/wireless/gdata2/contacts/data/Name;
    :cond_1b4
    const-string v25, "http://schemas.google.com/contact/2008"

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6b

    .line 405
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GMI:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1fe

    .line 406
    new-instance v9, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-direct {v9}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;-><init>()V

    .line 407
    .local v9, group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setGroup(Ljava/lang/String;)V

    .line 409
    const-string v25, "true"

    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_DELETED:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setDeleted(Z)V

    .line 411
    invoke-virtual {v4, v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addGroup(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V

    goto/16 :goto_6b

    .line 412
    .end local v9           #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    :cond_1fe
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BIRTHDAY:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_21d

    .line 413
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBirthday(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 415
    :cond_21d
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BILLINGINFO:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_232

    .line 416
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBillingInformation(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 417
    :cond_232
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_CALENDARLINK:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_262

    .line 418
    new-instance v3, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-direct {v3}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;-><init>()V

    .line 419
    .local v3, cl:Lcom/google/wireless/gdata2/contacts/data/CalendarLink;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v3, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 420
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->setHRef(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v4, v3}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addCalendarLink(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V

    goto/16 :goto_6b

    .line 422
    .end local v3           #cl:Lcom/google/wireless/gdata2/contacts/data/CalendarLink;
    :cond_262
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_DIRECTORYSERVER:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_277

    .line 423
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDirectoryServer(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 424
    :cond_277
    const-string v25, "event"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_299

    .line 425
    new-instance v6, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-direct {v6}, Lcom/google/wireless/gdata2/contacts/data/Event;-><init>()V

    .line 426
    .local v6, event:Lcom/google/wireless/gdata2/contacts/data/Event;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EVENT:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 427
    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleEventSubElement(Lcom/google/wireless/gdata2/contacts/data/Event;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 428
    invoke-virtual {v4, v6}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEvent(Lcom/google/wireless/gdata2/contacts/data/Event;)V

    goto/16 :goto_6b

    .line 429
    .end local v6           #event:Lcom/google/wireless/gdata2/contacts/data/Event;
    :cond_299
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EXTERNALID:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2c9

    .line 430
    new-instance v8, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-direct {v8}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;-><init>()V

    .line 431
    .local v8, externalId:Lcom/google/wireless/gdata2/contacts/data/ExternalId;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v8, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 432
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->setValue(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v4, v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExternalId(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V

    goto/16 :goto_6b

    .line 434
    .end local v8           #externalId:Lcom/google/wireless/gdata2/contacts/data/ExternalId;
    :cond_2c9
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GENDER:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2e8

    .line 435
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setGender(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 436
    :cond_2e8
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_HOBBY:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2fd

    .line 437
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addHobby(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 438
    :cond_2fd
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_INITIALS:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_312

    .line 439
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setInitials(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 440
    :cond_312
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_JOT:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_338

    .line 441
    new-instance v11, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-direct {v11}, Lcom/google/wireless/gdata2/contacts/data/Jot;-><init>()V

    .line 442
    .local v11, jot:Lcom/google/wireless/gdata2/contacts/data/Jot;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_JOT:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 443
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lcom/google/wireless/gdata2/contacts/data/Jot;->setLabel(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v4, v11}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addJot(Lcom/google/wireless/gdata2/contacts/data/Jot;)V

    goto/16 :goto_6b

    .line 445
    .end local v11           #jot:Lcom/google/wireless/gdata2/contacts/data/Jot;
    :cond_338
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_372

    .line 446
    new-instance v12, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-direct {v12}, Lcom/google/wireless/gdata2/contacts/data/Language;-><init>()V

    .line 447
    .local v12, language:Lcom/google/wireless/gdata2/contacts/data/Language;
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/google/wireless/gdata2/contacts/data/Language;->setCode(Ljava/lang/String;)V

    .line 448
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/google/wireless/gdata2/contacts/data/Language;->setLabel(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v4, v12}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addLanguage(Lcom/google/wireless/gdata2/contacts/data/Language;)V

    goto/16 :goto_6b

    .line 450
    .end local v12           #language:Lcom/google/wireless/gdata2/contacts/data/Language;
    :cond_372
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MAIDENNAME:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_387

    .line 451
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMaidenName(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 452
    :cond_387
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MILEAGE:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_39c

    .line 453
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMileage(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 454
    :cond_39c
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_NICKNAME:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3b1

    .line 455
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setNickname(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 456
    :cond_3b1
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_OCCUPATION:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3c6

    .line 457
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setOccupation(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 458
    :cond_3c6
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_PRIORITY:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3eb

    .line 459
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable;

    invoke-static/range {v25 .. v26}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setPriority(B)V

    goto/16 :goto_6b

    .line 462
    :cond_3eb
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_RELATION:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_417

    .line 463
    new-instance v22, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-direct/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/Relation;-><init>()V

    .line 464
    .local v22, relation:Lcom/google/wireless/gdata2/contacts/data/Relation;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_RELATION:Ljava/util/Hashtable;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 465
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->setText(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addRelation(Lcom/google/wireless/gdata2/contacts/data/Relation;)V

    goto/16 :goto_6b

    .line 467
    .end local v22           #relation:Lcom/google/wireless/gdata2/contacts/data/Relation;
    :cond_417
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SENSITIVITY:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_43c

    .line 468
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable;

    invoke-static/range {v25 .. v26}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSensitivity(B)V

    goto/16 :goto_6b

    .line 471
    :cond_43c
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SHORTNAME:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_451

    .line 472
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setShortName(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 473
    :cond_451
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SUBJECT:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_466

    .line 474
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSubject(Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 475
    :cond_466
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_UDF:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4a6

    .line 476
    new-instance v23, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-direct/range {v23 .. v23}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;-><init>()V

    .line 477
    .local v23, udf:Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->KEY:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setKey(Ljava/lang/String;)V

    .line 478
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setValue(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addUserDefinedField(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V

    goto/16 :goto_6b

    .line 480
    .end local v23           #udf:Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;
    :cond_4a6
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_WEBSITE:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6b

    .line 481
    new-instance v24, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-direct/range {v24 .. v24}, Lcom/google/wireless/gdata2/contacts/data/WebSite;-><init>()V

    .line 482
    .local v24, ws:Lcom/google/wireless/gdata2/contacts/data/WebSite;
    sget-object v25, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 483
    const/16 v25, 0x0

    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setHRef(Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addWebSite(Lcom/google/wireless/gdata2/contacts/data/WebSite;)V

    goto/16 :goto_6b
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 10
    .parameter "rel"
    .parameter "type"
    .parameter "href"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    const-string v3, "http://schemas.google.com/contacts/2008/rel#photo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v0, p4

    .line 492
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 493
    .local v0, contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 494
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "http://schemas.google.com/g/2005"

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, etag:Ljava/lang/String;
    invoke-virtual {v0, p3, p2, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setLinkPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .end local v0           #contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .end local v1           #etag:Ljava/lang/String;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1a
    return-void
.end method
