.class public Lcom/wssnps/database/smlContactItem;
.super Ljava/lang/Object;
.source "smlContactItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssnps/database/smlContactItem$ContactData;,
        Lcom/wssnps/database/smlContactItem$TypeHash;,
        Lcom/wssnps/database/smlContactItem$StorageType;
    }
.end annotation


# static fields
.field public static ModelDefine:Lcom/wssnps/smlModelDefine;

.field public static NewGroupID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

.field public static TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

.field public static TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

.field public static TYPE_ORG_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

.field public static TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

.field private static mAccountManager:Landroid/accounts/AccountManager;

.field private static mApplicationContext:Landroid/content/Context;

.field public static ops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static speed_ops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Dirty:Ljava/lang/String;

.field public EventAniiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public EventBdayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public EventCustomList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public EventEtcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public FN:Ljava/lang/String;

.field public GroupName:Ljava/lang/String;

.field public N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public NickNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public NoteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public Sip:Ljava/lang/String;

.field public _id:I

.field public addrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

.field public emailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public msnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public orgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public photo:Ljava/lang/String;

.field public relationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public sGroupDN:Ljava/lang/String;

.field public speedDialList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public telList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public urlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field public xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/high16 v4, 0x80

    const/16 v3, 0x100

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlContactItem;->NewGroupID:Ljava/util/HashMap;

    .line 232
    new-instance v0, Lcom/wssnps/smlModelDefine;

    invoke-direct {v0}, Lcom/wssnps/smlModelDefine;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlContactItem;->ModelDefine:Lcom/wssnps/smlModelDefine;

    .line 283
    new-instance v0, Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-direct {v0}, Lcom/wssnps/database/smlContactItem$TypeHash;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    .line 284
    new-instance v0, Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-direct {v0}, Lcom/wssnps/database/smlContactItem$TypeHash;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    .line 285
    new-instance v0, Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-direct {v0}, Lcom/wssnps/database/smlContactItem$TypeHash;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    .line 286
    new-instance v0, Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-direct {v0}, Lcom/wssnps/database/smlContactItem$TypeHash;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    .line 287
    new-instance v0, Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-direct {v0}, Lcom/wssnps/database/smlContactItem$TypeHash;-><init>()V

    sput-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ORG_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    .line 295
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "1"

    invoke-virtual {v0, v1, v6}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 296
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "2"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 297
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "3"

    invoke-virtual {v0, v1, v5}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 298
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "4"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 299
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "5"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 300
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "6"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 301
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "7"

    invoke-virtual {v0, v1, v3}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 302
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "8"

    const/high16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 303
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "9"

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 304
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "10"

    const v2, 0x2000004

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 305
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "11"

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 306
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "12"

    const/high16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 307
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "13"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 308
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "14"

    const/high16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 309
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "15"

    const/high16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 310
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "16"

    const/high16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 311
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "17"

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 312
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "18"

    const/16 v2, 0x84

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 313
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "19"

    const/high16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 314
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "20"

    const/high16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 315
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "0"

    invoke-virtual {v0, v1, v4}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 316
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "21"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 317
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "7"

    invoke-virtual {v0, v1, v3}, Lcom/wssnps/database/smlContactItem$TypeHash;->setOtherType(Ljava/lang/String;I)V

    .line 320
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "1"

    invoke-virtual {v0, v1, v6}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 321
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "2"

    invoke-virtual {v0, v1, v5}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 322
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "3"

    invoke-virtual {v0, v1, v3}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 323
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "4"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 324
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "0"

    invoke-virtual {v0, v1, v4}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 325
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "3"

    invoke-virtual {v0, v1, v3}, Lcom/wssnps/database/smlContactItem$TypeHash;->setOtherType(Ljava/lang/String;I)V

    .line 327
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "0"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 328
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "1"

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 329
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "2"

    const/high16 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 330
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "3"

    const/high16 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 331
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "4"

    const/high16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 332
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "5"

    const/high16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 333
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "6"

    const/high16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 334
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "7"

    const/high16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 335
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "-1"

    invoke-virtual {v0, v1, v4}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 336
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "0"

    invoke-virtual {v0, v1, v3}, Lcom/wssnps/database/smlContactItem$TypeHash;->setOtherType(Ljava/lang/String;I)V

    .line 338
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "1"

    invoke-virtual {v0, v1, v6}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 339
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "2"

    invoke-virtual {v0, v1, v5}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 340
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "3"

    invoke-virtual {v0, v1, v3}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 341
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "0"

    invoke-virtual {v0, v1, v4}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 342
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "3"

    invoke-virtual {v0, v1, v3}, Lcom/wssnps/database/smlContactItem$TypeHash;->setOtherType(Ljava/lang/String;I)V

    .line 344
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ORG_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "1"

    invoke-virtual {v0, v1, v5}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 345
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ORG_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "2"

    invoke-virtual {v0, v1, v3}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 346
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ORG_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "0"

    invoke-virtual {v0, v1, v4}, Lcom/wssnps/database/smlContactItem$TypeHash;->add(Ljava/lang/String;I)V

    .line 347
    sget-object v0, Lcom/wssnps/database/smlContactItem;->TYPE_ORG_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    const-string v1, "2"

    invoke-virtual {v0, v1, v3}, Lcom/wssnps/database/smlContactItem$TypeHash;->setOtherType(Ljava/lang/String;I)V

    .line 349
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->speedDialList:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    .line 215
    iput-object v1, p0, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    .line 219
    new-instance v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    .line 220
    iput-object v1, p0, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/wssnps/database/smlContactItem;->sGroupDN:Ljava/lang/String;

    .line 222
    iput-object v1, p0, Lcom/wssnps/database/smlContactItem;->Dirty:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public constructor <init>(Lcom/wssnps/base/smlvCard$SmlvCard_t;)V
    .registers 37
    .parameter "smlvcard"

    .prologue
    .line 419
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    .line 201
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    .line 202
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    .line 203
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    .line 204
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    .line 205
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    .line 206
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    .line 207
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    .line 208
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->speedDialList:Ljava/util/ArrayList;

    .line 209
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    .line 210
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    .line 211
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    .line 212
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    .line 213
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    .line 214
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    .line 215
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    .line 216
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    .line 217
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    .line 218
    new-instance v32, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    invoke-direct/range {v32 .. v32}, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    .line 219
    new-instance v32, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    invoke-direct/range {v32 .. v32}, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    .line 220
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    .line 221
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->sGroupDN:Ljava/lang/String;

    .line 222
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->Dirty:Ljava/lang/String;

    .line 421
    if-nez p1, :cond_f4

    .line 1071
    :cond_f3
    :goto_f3
    return-void

    .line 426
    :cond_f4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->luid:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 428
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    move-object/from16 v32, v0

    if-eqz v32, :cond_15c

    .line 430
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_132

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    .line 432
    :cond_132
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_15c

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    .line 437
    :cond_15c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1d5

    .line 448
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3a2

    .line 450
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_34c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_34c

    .line 452
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    .line 469
    :cond_1d5
    :goto_1d5
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 470
    .local v16, data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 473
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    if-eqz v32, :cond_31b

    .line 476
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_212

    .line 477
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 479
    :cond_212
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_236

    .line 480
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 482
    :cond_236
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_25a

    .line 483
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    .line 485
    :cond_25a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->middle:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_27e

    .line 486
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->middle:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    .line 488
    :cond_27e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_2a2

    .line 489
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    .line 491
    :cond_2a2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticFamily:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_2c6

    .line 492
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticFamily:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    .line 494
    :cond_2c6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticGiven:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_2ea

    .line 495
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticGiven:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    .line 497
    :cond_2ea
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticMiddle:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_30e

    .line 498
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticMiddle:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    .line 500
    :cond_30e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_31b
    const/16 v23, 0x0

    .local v23, i:I
    :goto_31d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NICKNAME:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_3d4

    .line 507
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NICKNAME:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 508
    .local v31, vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3ac

    .line 505
    :cond_349
    :goto_349
    add-int/lit8 v23, v23, 0x1

    goto :goto_31d

    .line 454
    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v23           #i:I
    .end local v31           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_34c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_372

    .line 456
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    goto/16 :goto_1d5

    .line 458
    :cond_372
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_398

    .line 460
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    goto/16 :goto_1d5

    .line 463
    :cond_398
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    goto/16 :goto_1d5

    .line 466
    :cond_3a2
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    goto/16 :goto_1d5

    .line 510
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .restart local v23       #i:I
    .restart local v31       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_3ac
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_349

    .line 512
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 513
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_349

    .line 520
    .end local v31           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_3d4
    const/16 v23, 0x0

    :goto_3d6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_42c

    .line 522
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 523
    .restart local v31       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_405

    .line 520
    :cond_402
    :goto_402
    add-int/lit8 v23, v23, 0x1

    goto :goto_3d6

    .line 525
    :cond_405
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_402

    .line 527
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 528
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_402

    .line 535
    .end local v31           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_42c
    const/16 v27, 0x0

    .line 536
    .local v27, speedDial:Ljava/lang/String;
    const/16 v23, 0x0

    :goto_430
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_50f

    .line 538
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 540
    .restart local v31       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->speedDialList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v23

    if-le v0, v1, :cond_470

    .line 543
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->speedDialList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #speedDial:Ljava/lang/String;
    check-cast v27, Ljava/lang/String;

    .line 545
    .restart local v27       #speedDial:Ljava/lang/String;
    :cond_470
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_47f

    .line 536
    :cond_47c
    :goto_47c
    add-int/lit8 v23, v23, 0x1

    goto :goto_430

    .line 548
    :cond_47f
    sget-object v32, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    move-object/from16 v0, v31

    iget v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/wssnps/database/smlContactItem$TypeHash;->getPhoneType(I)Ljava/lang/String;

    move-result-object v28

    .line 550
    .local v28, type:Ljava/lang/String;
    if-nez v28, :cond_493

    .line 551
    sget-object v32, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-virtual/range {v32 .. v32}, Lcom/wssnps/database/smlContactItem$TypeHash;->getPhoneOtherType()Ljava/lang/String;

    move-result-object v28

    .line 553
    :cond_493
    if-eqz v28, :cond_47c

    .line 555
    const-string v32, "21"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_4b5

    .line 557
    new-instance v32, Ljava/lang/String;

    invoke-direct/range {v32 .. v32}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    .line 558
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    goto :goto_47c

    .line 562
    :cond_4b5
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 563
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 564
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 565
    const-string v32, "0"

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4e4

    .line 566
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 567
    :cond_4e4
    if-eqz v27, :cond_500

    const-string v32, " "

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-eqz v32, :cond_500

    invoke-static/range {v27 .. v27}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_500

    .line 570
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 571
    const/16 v27, 0x0

    .line 573
    :cond_500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47c

    .line 580
    .end local v28           #type:Ljava/lang/String;
    .end local v31           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_50f
    const/16 v23, 0x0

    :goto_511
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_593

    .line 582
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 583
    .restart local v31       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_540

    .line 580
    :cond_53d
    :goto_53d
    add-int/lit8 v23, v23, 0x1

    goto :goto_511

    .line 586
    :cond_540
    sget-object v32, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    move-object/from16 v0, v31

    iget v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/wssnps/database/smlContactItem$TypeHash;->getPhoneType(I)Ljava/lang/String;

    move-result-object v28

    .line 588
    .restart local v28       #type:Ljava/lang/String;
    if-nez v28, :cond_554

    .line 589
    sget-object v32, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-virtual/range {v32 .. v32}, Lcom/wssnps/database/smlContactItem$TypeHash;->getPhoneOtherType()Ljava/lang/String;

    move-result-object v28

    .line 591
    :cond_554
    if-eqz v28, :cond_53d

    .line 593
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 594
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 595
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 596
    const-string v32, "0"

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_585

    .line 597
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 598
    :cond_585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53d

    .line 605
    .end local v28           #type:Ljava/lang/String;
    .end local v31           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_593
    const/16 v23, 0x0

    :goto_595
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_616

    .line 608
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;

    .line 609
    .local v29, vcardAddr:Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;
    sget-object v32, Lcom/wssnps/database/smlContactItem;->TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->type:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/wssnps/database/smlContactItem$TypeHash;->getPhoneType(I)Ljava/lang/String;

    move-result-object v28

    .line 611
    .restart local v28       #type:Ljava/lang/String;
    if-nez v28, :cond_5c9

    .line 612
    sget-object v32, Lcom/wssnps/database/smlContactItem;->TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-virtual/range {v32 .. v32}, Lcom/wssnps/database/smlContactItem$TypeHash;->getPhoneOtherType()Ljava/lang/String;

    move-result-object v28

    .line 614
    :cond_5c9
    if-eqz v28, :cond_606

    .line 616
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 617
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 618
    const-string v32, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_5ee

    .line 619
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->ExCustomValue:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 628
    :cond_5ee
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_606

    .line 630
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    .line 650
    :cond_606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v23, v23, 0x1

    goto :goto_595

    .line 656
    .end local v28           #type:Ljava/lang/String;
    .end local v29           #vcardAddr:Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;
    :cond_616
    const/16 v23, 0x0

    :goto_618
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_6b2

    .line 658
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;

    .line 660
    .local v30, vcardOrg:Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;
    sget-object v32, Lcom/wssnps/database/smlContactItem;->TYPE_ORG_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    move-object/from16 v0, v30

    iget v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->type:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/wssnps/database/smlContactItem$TypeHash;->getPhoneType(I)Ljava/lang/String;

    move-result-object v28

    .line 662
    .restart local v28       #type:Ljava/lang/String;
    if-nez v28, :cond_64c

    .line 663
    sget-object v32, Lcom/wssnps/database/smlContactItem;->TYPE_ORG_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-virtual/range {v32 .. v32}, Lcom/wssnps/database/smlContactItem$TypeHash;->getPhoneOtherType()Ljava/lang/String;

    move-result-object v28

    .line 665
    :cond_64c
    if-eqz v28, :cond_6ae

    .line 667
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 669
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 670
    const-string v32, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_671

    .line 671
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->ExCustomValue:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 672
    :cond_671
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_689

    .line 674
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 677
    :cond_689
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_6a1

    .line 679
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    .line 682
    :cond_6a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_6ae
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_618

    .line 688
    .end local v28           #type:Ljava/lang/String;
    .end local v30           #vcardOrg:Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;
    :cond_6b2
    const/16 v23, 0x0

    :goto_6b4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_702

    .line 690
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 691
    .restart local v31       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6e3

    .line 688
    :goto_6e0
    add-int/lit8 v23, v23, 0x1

    goto :goto_6b4

    .line 694
    :cond_6e3
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 695
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e0

    .line 703
    .end local v31           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_702
    const/16 v23, 0x0

    :goto_704
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->MSNList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_792

    .line 705
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->MSNList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 706
    .restart local v31       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_733

    .line 703
    :cond_730
    :goto_730
    add-int/lit8 v23, v23, 0x1

    goto :goto_704

    .line 709
    :cond_733
    sget-object v32, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    move-object/from16 v0, v31

    iget v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/wssnps/database/smlContactItem$TypeHash;->getPhoneType(I)Ljava/lang/String;

    move-result-object v28

    .line 711
    .restart local v28       #type:Ljava/lang/String;
    if-nez v28, :cond_747

    .line 712
    sget-object v32, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-virtual/range {v32 .. v32}, Lcom/wssnps/database/smlContactItem$TypeHash;->getPhoneOtherType()Ljava/lang/String;

    move-result-object v28

    .line 714
    :cond_747
    if-eqz v28, :cond_730

    .line 716
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 717
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 718
    const/16 v32, 0x3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 719
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    .line 721
    const-string v32, "-1"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_784

    .line 724
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    .line 727
    :cond_784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_730

    .line 734
    .end local v28           #type:Ljava/lang/String;
    .end local v31           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_792
    const/16 v23, 0x0

    :goto_794
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->GroupIDList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_7d3

    .line 736
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->GroupIDList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 737
    .local v9, GroupID:Ljava/lang/String;
    invoke-static {v9}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_7d0

    .line 739
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 740
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_7d0
    add-int/lit8 v23, v23, 0x1

    goto :goto_794

    .line 747
    .end local v9           #GroupID:Ljava/lang/String;
    :cond_7d3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    move-object/from16 v32, v0

    if-eqz v32, :cond_7ed

    .line 750
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    move-object/from16 v26, v0

    .line 751
    .local v26, photo_t:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    .line 762
    .end local v26           #photo_t:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;
    :cond_7ed
    const/16 v23, 0x0

    :goto_7ef
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->BDAY:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_aec

    .line 764
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->BDAY:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wssnps/base/smlvCard$SMLDate_t;

    .line 766
    .local v6, BirthDay:Lcom/wssnps/base/smlvCard$SMLDate_t;
    const-string v15, ""

    .line 767
    .local v15, birthdayString:Ljava/lang/String;
    const-string v14, ""

    .line 768
    .local v14, birthdayLunarString:Ljava/lang/String;
    const-string v13, ""

    .line 769
    .local v13, birthLunar:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 770
    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_a22

    .line 771
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 772
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 773
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 780
    :goto_889
    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_a54

    .line 781
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 782
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 783
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 790
    :goto_8e2
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getLunarType()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9ec

    .line 792
    new-instance v25, Lcom/sec/android/solunconverter/SolarLunarConverter;

    invoke-direct/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;-><init>()V

    .line 793
    .local v25, mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 794
    const-string v32, "0"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-eqz v32, :cond_9ec

    .line 796
    const/16 v24, 0x0

    .line 798
    .local v24, leapMonth:Z
    const-string v32, "2"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_913

    .line 799
    const/16 v24, 0x1

    .line 801
    :cond_913
    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    move/from16 v32, v0

    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/solunconverter/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 802
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getYear()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 803
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_a86

    .line 804
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 805
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 806
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 813
    :goto_993
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_aba

    .line 814
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 815
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 816
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 825
    .end local v24           #leapMonth:Z
    .end local v25           #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_9ec
    :goto_9ec
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 826
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 827
    const-string v32, "3"

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 828
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_a07

    .line 829
    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    .line 830
    :cond_a07
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_a11

    .line 831
    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 832
    :cond_a11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_7ef

    .line 776
    :cond_a22
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 777
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_889

    .line 786
    :cond_a54
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 787
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v6, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_8e2

    .line 809
    .restart local v24       #leapMonth:Z
    .restart local v25       #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_a86
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 810
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_993

    .line 819
    :cond_aba
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 820
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_9ec

    .line 836
    .end local v6           #BirthDay:Lcom/wssnps/base/smlvCard$SMLDate_t;
    .end local v13           #birthLunar:Ljava/lang/String;
    .end local v14           #birthdayLunarString:Ljava/lang/String;
    .end local v15           #birthdayString:Ljava/lang/String;
    .end local v24           #leapMonth:Z
    .end local v25           #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_aec
    const/16 v23, 0x0

    :goto_aee
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ANNIVERSARY:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_deb

    .line 838
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ANNIVERSARY:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wssnps/base/smlvCard$SMLDate_t;

    .line 840
    .local v5, Anniverssary:Lcom/wssnps/base/smlvCard$SMLDate_t;
    const-string v12, ""

    .line 841
    .local v12, anniverssaryString:Ljava/lang/String;
    const-string v11, ""

    .line 842
    .local v11, anniverssaryLunarString:Ljava/lang/String;
    const-string v10, ""

    .line 843
    .local v10, anniverssaryLunar:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 844
    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_d21

    .line 845
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 846
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 847
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 854
    :goto_b88
    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_d53

    .line 855
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 856
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 857
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 864
    :goto_be1
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getLunarType()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_ceb

    .line 866
    new-instance v25, Lcom/sec/android/solunconverter/SolarLunarConverter;

    invoke-direct/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;-><init>()V

    .line 867
    .restart local v25       #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 868
    const-string v32, "0"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-eqz v32, :cond_ceb

    .line 870
    const/16 v24, 0x0

    .line 872
    .restart local v24       #leapMonth:Z
    const-string v32, "2"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_c12

    .line 873
    const/16 v24, 0x1

    .line 875
    :cond_c12
    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    move/from16 v32, v0

    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/solunconverter/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 876
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getYear()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 877
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_d85

    .line 878
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 879
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 880
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 887
    :goto_c92
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_db9

    .line 888
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 889
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 890
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 898
    .end local v24           #leapMonth:Z
    .end local v25           #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_ceb
    :goto_ceb
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 899
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v16

    iput-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 900
    const-string v32, "1"

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 901
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_d06

    .line 902
    move-object/from16 v0, v16

    iput-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    .line 903
    :cond_d06
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_d10

    .line 904
    move-object/from16 v0, v16

    iput-object v10, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 905
    :cond_d10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_aee

    .line 850
    :cond_d21
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 851
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_b88

    .line 860
    :cond_d53
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 861
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v5, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_be1

    .line 883
    .restart local v24       #leapMonth:Z
    .restart local v25       #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_d85
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 884
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_c92

    .line 893
    :cond_db9
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 894
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_ceb

    .line 909
    .end local v5           #Anniverssary:Lcom/wssnps/base/smlvCard$SMLDate_t;
    .end local v10           #anniverssaryLunar:Ljava/lang/String;
    .end local v11           #anniverssaryLunarString:Ljava/lang/String;
    .end local v12           #anniverssaryString:Ljava/lang/String;
    .end local v24           #leapMonth:Z
    .end local v25           #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_deb
    const/16 v23, 0x0

    :goto_ded
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_ETC:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_111e

    .line 911
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_ETC:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wssnps/base/smlvCard$SMLDate_t;

    .line 913
    .local v8, Eventday:Lcom/wssnps/base/smlvCard$SMLDate_t;
    const-string v22, ""

    .line 914
    .local v22, eventdayString:Ljava/lang/String;
    const-string v21, ""

    .line 915
    .local v21, eventdayLunarString:Ljava/lang/String;
    const-string v20, ""

    .line 916
    .local v20, eventdayLunar:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 917
    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_1044

    .line 918
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 919
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 920
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 927
    :goto_e8f
    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_107a

    .line 928
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 929
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 930
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 937
    :goto_eee
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getLunarType()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1008

    .line 939
    new-instance v25, Lcom/sec/android/solunconverter/SolarLunarConverter;

    invoke-direct/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;-><init>()V

    .line 940
    .restart local v25       #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 941
    const-string v32, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-eqz v32, :cond_1008

    .line 943
    const/16 v24, 0x0

    .line 945
    .restart local v24       #leapMonth:Z
    const-string v32, "2"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_f23

    .line 946
    const/16 v24, 0x1

    .line 948
    :cond_f23
    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    move/from16 v32, v0

    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/solunconverter/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 949
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getYear()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 950
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_10b0

    .line 951
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 952
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 953
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 960
    :goto_fa9
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_10e8

    .line 961
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 962
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 963
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 971
    .end local v24           #leapMonth:Z
    .end local v25           #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_1008
    :goto_1008
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 972
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 973
    const-string v32, "2"

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 974
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_1027

    .line 975
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    .line 976
    :cond_1027
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_1033

    .line 977
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 978
    :cond_1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_ded

    .line 923
    :cond_1044
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 924
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_e8f

    .line 933
    :cond_107a
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 934
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v8, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_eee

    .line 956
    .restart local v24       #leapMonth:Z
    .restart local v25       #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_10b0
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 957
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_fa9

    .line 966
    :cond_10e8
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 967
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1008

    .line 982
    .end local v8           #Eventday:Lcom/wssnps/base/smlvCard$SMLDate_t;
    .end local v20           #eventdayLunar:Ljava/lang/String;
    .end local v21           #eventdayLunarString:Ljava/lang/String;
    .end local v22           #eventdayString:Ljava/lang/String;
    .end local v24           #leapMonth:Z
    .end local v25           #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_111e
    const/16 v23, 0x0

    :goto_1120
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_CUSTOM:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_145b

    .line 984
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_CUSTOM:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wssnps/base/smlvCard$SMLDate_t;

    .line 986
    .local v7, EventCustomday:Lcom/wssnps/base/smlvCard$SMLDate_t;
    const-string v19, ""

    .line 987
    .local v19, eventcustomdayString:Ljava/lang/String;
    const-string v18, ""

    .line 988
    .local v18, eventcustomdayLunarString:Ljava/lang/String;
    const-string v17, ""

    .line 989
    .local v17, eventcustomdayLunar:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 990
    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_1381

    .line 991
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 992
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 993
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1000
    :goto_11c2
    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_13b7

    .line 1001
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1002
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1003
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1010
    :goto_1221
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getLunarType()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_133b

    .line 1012
    new-instance v25, Lcom/sec/android/solunconverter/SolarLunarConverter;

    invoke-direct/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;-><init>()V

    .line 1013
    .restart local v25       #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 1014
    const-string v32, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-eqz v32, :cond_133b

    .line 1016
    const/16 v24, 0x0

    .line 1018
    .restart local v24       #leapMonth:Z
    const-string v32, "2"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-nez v32, :cond_1256

    .line 1019
    const/16 v24, 0x1

    .line 1021
    :cond_1256
    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    move/from16 v32, v0

    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/solunconverter/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 1022
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getYear()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 1023
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_13ed

    .line 1024
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1025
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1026
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1033
    :goto_12dc
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_1425

    .line 1034
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1035
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1036
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1044
    .end local v24           #leapMonth:Z
    .end local v25           #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_133b
    :goto_133b
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 1045
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 1046
    const-string v32, "0"

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 1047
    iget-object v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->ExCustomValue:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 1048
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_1364

    .line 1049
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    .line 1050
    :cond_1364
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_1370

    .line 1051
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 1052
    :cond_1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1120

    .line 996
    :cond_1381
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 997
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_11c2

    .line 1006
    :cond_13b7
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1007
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget v0, v7, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1221

    .line 1029
    .restart local v24       #leapMonth:Z
    .restart local v25       #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_13ed
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1030
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getMonth()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_12dc

    .line 1039
    :cond_1425
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1040
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/solunconverter/SolarLunarConverter;->getDay()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_133b

    .line 1055
    .end local v7           #EventCustomday:Lcom/wssnps/base/smlvCard$SMLDate_t;
    .end local v17           #eventcustomdayLunar:Ljava/lang/String;
    .end local v18           #eventcustomdayLunarString:Ljava/lang/String;
    .end local v19           #eventcustomdayString:Ljava/lang/String;
    .end local v24           #leapMonth:Z
    .end local v25           #mSolarLunarConverter:Lcom/sec/android/solunconverter/SolarLunarConverter;
    :cond_145b
    const/16 v23, 0x0

    :goto_145d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->RELATIONList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_14ba

    .line 1057
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->RELATIONList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 1058
    .restart local v31       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    new-instance v16, Lcom/wssnps/database/smlContactItem$ContactData;

    .end local v16           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    invoke-direct/range {v16 .. v16}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 1059
    .restart local v16       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 1060
    move-object/from16 v0, v31

    iget v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 1061
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    add-int/lit8 v23, v23, 0x1

    goto :goto_145d

    .line 1065
    .end local v31           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_14ba
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f3

    .line 1067
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->GroupName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_f3

    .line 1068
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->GroupName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    goto/16 :goto_f3
.end method

.method public static DecodeVCard(Ljava/lang/String;)Lcom/wssnps/database/smlContactItem;
    .registers 3
    .parameter "vcard"

    .prologue
    .line 1100
    invoke-static {p0}, Lcom/wssnps/base/smlvCard;->DecodeVCard(Ljava/lang/String;)Lcom/wssnps/base/smlvCard$SmlvCard_t;

    move-result-object v1

    .line 1101
    .local v1, v:Lcom/wssnps/base/smlvCard$SmlvCard_t;
    new-instance v0, Lcom/wssnps/database/smlContactItem;

    invoke-direct {v0, v1}, Lcom/wssnps/database/smlContactItem;-><init>(Lcom/wssnps/base/smlvCard$SmlvCard_t;)V

    .line 1103
    .local v0, contactitem:Lcom/wssnps/database/smlContactItem;
    return-object v0
.end method

.method public static DecodeVCardList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .parameter "vcard"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1082
    const/4 v2, 0x0

    .line 1083
    .local v2, i:I
    invoke-static {p0}, Lcom/wssnps/base/smlvCard;->DecodeVCardList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1084
    .local v3, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wssnps/base/smlvCard$SmlvCard_t;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .local v0, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/wssnps/database/smlContactItem;>;"
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_22

    .line 1090
    new-instance v1, Lcom/wssnps/database/smlContactItem;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wssnps/base/smlvCard$SmlvCard_t;

    invoke-direct {v1, v4}, Lcom/wssnps/database/smlContactItem;-><init>(Lcom/wssnps/base/smlvCard$SmlvCard_t;)V

    .line 1091
    .local v1, contactitem:Lcom/wssnps/database/smlContactItem;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1094
    .end local v1           #contactitem:Lcom/wssnps/database/smlContactItem;
    :cond_22
    return-object v0
.end method

.method private static DeleteSpeedDial(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 5022
    .line 5025
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 5027
    iget v0, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 5029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5030
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5031
    if-nez v7, :cond_4b

    .line 5072
    :cond_4a
    :goto_4a
    return-void

    .line 5035
    :cond_4b
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 5036
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 5040
    :cond_57
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5041
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_57

    .line 5045
    :cond_6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5046
    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 5048
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speed_dial_data_id IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5050
    if-eqz v2, :cond_4a

    .line 5054
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 5058
    :cond_b1
    sget-object v0, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "key_number"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5061
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 5067
    :cond_ee
    if-eqz v2, :cond_f3

    .line 5068
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5070
    :cond_f3
    if-eqz v7, :cond_4a

    .line 5071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4a
.end method

.method private static DeleteSpeedDial(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 4970
    .line 4973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4974
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4977
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4978
    if-nez v7, :cond_54

    .line 5019
    :cond_53
    :goto_53
    return-void

    .line 4982
    :cond_54
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4983
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 4987
    :cond_60
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4988
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_60

    .line 4992
    :cond_77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4993
    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f6

    .line 4995
    const-string v1, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speed_dial_data_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4997
    if-eqz v2, :cond_53

    .line 5001
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 5005
    :cond_b9
    sget-object v0, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "key_number"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5008
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 5014
    :cond_f6
    if-eqz v2, :cond_fb

    .line 5015
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5017
    :cond_fb
    if-eqz v7, :cond_53

    .line 5018
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_53
.end method

.method public static RestoreGroup(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 2574
    .line 2575
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2581
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2584
    const-string v0, "system_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2585
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2587
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 2590
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2627
    :goto_43
    return p2

    .line 2597
    :cond_44
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_60

    .line 2601
    invoke-static {p0, p1, v6}, Lcom/wssnps/database/smlContactItem;->addGroup(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I

    move-result v0

    .line 2602
    sget-object v2, Lcom/wssnps/database/smlContactItem;->NewGroupID:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move p2, v0

    .line 2605
    goto :goto_43

    .line 2608
    :cond_60
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    if-eqz v0, :cond_7d

    .line 2610
    const-string v0, "title"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    const-string v0, "group_visible"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2612
    const-string v0, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2616
    :cond_7d
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v7, v0}, Lcom/wssnps/database/smlContactItem;->insertContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 2618
    if-nez v0, :cond_aa

    .line 2619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error add contact. luid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2620
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move p2, v6

    .line 2621
    goto :goto_43

    .line 2624
    :cond_aa
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2625
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 2626
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_43
.end method

.method public static String2SMLDate(Ljava/lang/String;Ljava/lang/String;)Lcom/wssnps/base/smlvCard$SMLDate_t;
    .registers 11
    .parameter "data"
    .parameter "lunar"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 1588
    new-instance v3, Lcom/wssnps/base/smlvCard$SMLDate_t;

    invoke-direct {v3}, Lcom/wssnps/base/smlvCard$SMLDate_t;-><init>()V

    .line 1590
    .local v3, smlDate:Lcom/wssnps/base/smlvCard$SMLDate_t;
    const/4 v1, 0x0

    .line 1592
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 1594
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #dateFormat:Ljava/text/SimpleDateFormat;
    const-string v4, "yyyy-MM-dd"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1597
    .restart local v1       #dateFormat:Ljava/text/SimpleDateFormat;
    :try_start_19
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1c
    .catch Ljava/text/ParseException; {:try_start_19 .. :try_end_1c} :catch_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1c} :catch_8d

    .line 1610
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1611
    .local v0, array:[Ljava/lang/String;
    aget-object v4, v0, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    .line 1612
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    .line 1613
    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    .line 1614
    aget-object v4, v0, v5

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_a5

    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_a5

    .line 1615
    aget-object v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    .line 1621
    :cond_6a
    :goto_6a
    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_df

    .line 1622
    iput v6, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    .line 1666
    .end local v0           #array:[Ljava/lang/String;
    :cond_74
    :goto_74
    return-object v3

    .line 1599
    :catch_75
    move-exception v2

    .line 1601
    .local v2, e:Ljava/text/ParseException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String2SMLDate ParseException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_74

    .line 1604
    .end local v2           #e:Ljava/text/ParseException;
    :catch_8d
    move-exception v2

    .line 1606
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String2SMLDate IllegalArgumentException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_74

    .line 1616
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #array:[Ljava/lang/String;
    :cond_a5
    aget-object v4, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 1617
    aget-object v4, v0, v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    goto :goto_6a

    .line 1618
    :cond_c2
    aget-object v4, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1619
    aget-object v4, v0, v5

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    goto :goto_6a

    .line 1623
    :cond_df
    const-string v4, "2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_ea

    .line 1624
    iput v5, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_74

    .line 1625
    :cond_ea
    const-string v4, "3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_74

    .line 1626
    iput v8, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto :goto_74

    .line 1629
    .end local v0           #array:[Ljava/lang/String;
    :cond_f5
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1631
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #dateFormat:Ljava/text/SimpleDateFormat;
    const-string v4, "yyyy.MM.dd"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1634
    .restart local v1       #dateFormat:Ljava/text/SimpleDateFormat;
    :try_start_104
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_107
    .catch Ljava/text/ParseException; {:try_start_104 .. :try_end_107} :catch_161
    .catch Ljava/lang/IllegalArgumentException; {:try_start_104 .. :try_end_107} :catch_17a

    .line 1647
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1648
    .restart local v0       #array:[Ljava/lang/String;
    aget-object v4, v0, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->nYear:I

    .line 1649
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->nMonth:I

    .line 1650
    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    .line 1651
    aget-object v4, v0, v5

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_193

    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_193

    .line 1652
    aget-object v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    .line 1658
    :cond_155
    :goto_155
    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1cd

    .line 1659
    iput v6, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto/16 :goto_74

    .line 1636
    .end local v0           #array:[Ljava/lang/String;
    :catch_161
    move-exception v2

    .line 1638
    .local v2, e:Ljava/text/ParseException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String2SMLDate ParseException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_74

    .line 1641
    .end local v2           #e:Ljava/text/ParseException;
    :catch_17a
    move-exception v2

    .line 1643
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String2SMLDate IllegalArgumentException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_74

    .line 1653
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #array:[Ljava/lang/String;
    :cond_193
    aget-object v4, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1b0

    .line 1654
    aget-object v4, v0, v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    goto :goto_155

    .line 1655
    :cond_1b0
    aget-object v4, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_155

    .line 1656
    aget-object v4, v0, v5

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->nDay:I

    goto :goto_155

    .line 1660
    :cond_1cd
    const-string v4, "2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1d9

    .line 1661
    iput v5, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto/16 :goto_74

    .line 1662
    :cond_1d9
    const-string v4, "3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_74

    .line 1663
    iput v8, v3, Lcom/wssnps/base/smlvCard$SMLDate_t;->Lunar:I

    goto/16 :goto_74
.end method

.method public static addContact(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2938
    iput p2, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 2939
    const/16 v0, 0x64

    new-array v6, v0, [Landroid/content/ContentValues;

    .line 2943
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlContactItem;->mApplicationContext:Landroid/content/Context;

    .line 2944
    sget-object v0, Lcom/wssnps/database/smlContactItem;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlContactItem;->mAccountManager:Landroid/accounts/AccountManager;

    .line 2945
    sget-object v0, Lcom/wssnps/database/smlContactItem;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 2947
    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v3, v3, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-static {v3}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    array-length v0, v0

    if-lt v0, v1, :cond_2e

    .line 2950
    const/16 v2, -0xa

    .line 3085
    :goto_2d
    return v2

    .line 2952
    :cond_2e
    invoke-virtual {p1, p0}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Landroid/content/ContentResolver;)Landroid/content/ContentValues;

    move-result-object v0

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v3}, Lcom/wssnps/database/smlContactItem;->insertContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 2954
    if-nez v0, :cond_5b

    .line 2955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error add contact. luid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_2d

    .line 2959
    :cond_5b
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2960
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2961
    iput v5, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 2965
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    if-eqz v0, :cond_27a

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27a

    .line 2968
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {p1, v0, v3}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v2

    move v0, v1

    .line 2973
    :goto_88
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    if-eqz v1, :cond_b6

    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b6

    move v1, v2

    move v3, v0

    .line 2975
    :goto_96
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b5

    .line 2977
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v7, "vnd.android.cursor.item/nickname"

    invoke-virtual {p1, v0, v7}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v3

    .line 2975
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_96

    :cond_b5
    move v0, v3

    .line 2983
    :cond_b6
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    if-eqz v1, :cond_e4

    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e4

    move v1, v2

    move v3, v0

    .line 2985
    :goto_c4
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e3

    .line 2987
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v7, "vnd.android.cursor.item/note"

    invoke-virtual {p1, v0, v7}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v3

    .line 2985
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_c4

    :cond_e3
    move v0, v3

    .line 2993
    :cond_e4
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    if-eqz v1, :cond_112

    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_112

    move v1, v2

    move v3, v0

    .line 2995
    :goto_f2
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_111

    .line 2997
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, v0, v7}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v3

    .line 2995
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_f2

    :cond_111
    move v0, v3

    .line 3003
    :cond_112
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    if-eqz v1, :cond_140

    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_140

    move v1, v2

    move v3, v0

    .line 3005
    :goto_120
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_13f

    .line 3007
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p1, v0, v7}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v3

    .line 3005
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_120

    :cond_13f
    move v0, v3

    .line 3012
    :cond_140
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    if-eqz v1, :cond_16e

    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16e

    move v1, v2

    move v3, v0

    .line 3014
    :goto_14e
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16d

    .line 3016
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v7, "vnd.android.cursor.item/im"

    invoke-virtual {p1, v0, v7}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v3

    .line 3014
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_14e

    :cond_16d
    move v0, v3

    .line 3022
    :cond_16e
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    if-eqz v1, :cond_19c

    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19c

    move v1, v2

    move v3, v0

    .line 3024
    :goto_17c
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19b

    .line 3026
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p1, v0, v7}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v3

    .line 3024
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_17c

    :cond_19b
    move v0, v3

    .line 3032
    :cond_19c
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1ca

    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1ca

    move v1, v2

    move v3, v0

    .line 3034
    :goto_1aa
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c9

    .line 3036
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v7, "vnd.android.cursor.item/organization"

    invoke-virtual {p1, v0, v7}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v3

    .line 3034
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_1aa

    :cond_1c9
    move v0, v3

    .line 3042
    :cond_1ca
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f8

    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1f8

    move v1, v2

    move v3, v0

    .line 3044
    :goto_1d8
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f7

    .line 3046
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v7, "vnd.android.cursor.item/website"

    invoke-virtual {p1, v0, v7}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v3

    .line 3044
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_1d8

    :cond_1f7
    move v0, v3

    .line 3051
    :cond_1f8
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_226

    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_226

    move v1, v2

    move v3, v0

    .line 3053
    :goto_206
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_225

    .line 3055
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p1, v0, v7}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v3

    .line 3053
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_206

    :cond_225
    move v0, v3

    .line 3061
    :cond_226
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    if-eqz v1, :cond_237

    .line 3063
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {p1, v3, v4}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v6, v0

    move v0, v1

    .line 3067
    :cond_237
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->speedDialList:Ljava/util/ArrayList;

    if-eqz v1, :cond_265

    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->speedDialList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_265

    move v1, v2

    move v3, v0

    .line 3069
    :goto_245
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->speedDialList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_264

    .line 3071
    add-int/lit8 v4, v3, 0x1

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->speedDialList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, v0, v7}, Lcom/wssnps/database/smlContactItem;->insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v3

    .line 3069
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_245

    :cond_264
    move v0, v3

    .line 3075
    :cond_265
    new-array v1, v0, [Landroid/content/ContentValues;

    .line 3076
    :goto_267
    if-ge v2, v0, :cond_270

    .line 3078
    aget-object v3, v6, v2

    aput-object v3, v1, v2

    .line 3076
    add-int/lit8 v2, v2, 0x1

    goto :goto_267

    .line 3081
    :cond_270
    if-lez v0, :cond_277

    .line 3083
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/wssnps/database/smlContactItem;->insertContentValues(Landroid/content/ContentResolver;[Landroid/content/ContentValues;Landroid/net/Uri;)I

    :cond_277
    move v2, v5

    .line 3085
    goto/16 :goto_2d

    :cond_27a
    move v0, v2

    goto/16 :goto_88
.end method

.method public static addContactBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;II)Ljava/lang/String;
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1671
    sget-object v1, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    .line 1672
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    .line 1677
    :cond_b
    const-string v4, ""

    .line 1681
    const/4 v1, 0x0

    .line 1683
    sget-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    if-nez v2, :cond_19

    .line 1684
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    .line 1685
    :cond_19
    const-string v2, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1686
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1689
    new-array v10, v9, [I

    .line 1691
    const v2, 0x7a120

    move/from16 v0, p3

    if-ge v0, v2, :cond_5e

    .line 1692
    const/4 v2, 0x0

    .line 1696
    :goto_32
    packed-switch v2, :pswitch_data_10c2

    move-object v3, v4

    .line 2286
    :cond_36
    :goto_36
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applybatch sid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2287
    sget-object v1, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2288
    sget-object v1, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2289
    return-object v3

    .line 1694
    :cond_5e
    const/4 v2, 0x1

    goto :goto_32

    .line 1700
    :pswitch_60
    const/4 v1, 0x1

    const-string v2, "applybatch BATCH_METHOD_ALL"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1701
    const/4 v1, 0x0

    move v5, v1

    :goto_68
    if-ge v5, v9, :cond_7ad

    .line 1703
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wssnps/database/smlContactItem;

    .line 1704
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1705
    aput v6, v10, v5

    .line 1707
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1709
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    const-string v3, "vnd.sec.contact.phone"

    iput-object v3, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    .line 1711
    :cond_8a
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 1713
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    const-string v3, "vnd.sec.contact.phone"

    iput-object v3, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    .line 1716
    :cond_9a
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v11, "account_type"

    iget-object v12, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v12, v12, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v11, "account_name"

    iget-object v12, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v12, v12, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_174

    .line 1724
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v11, "raw_contact_id"

    invoke-virtual {v2, v11, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v11, "mimetype"

    const-string v12, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data5"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data4"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data6"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data9"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data7"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data8"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    :cond_174
    const/4 v2, 0x0

    move v3, v2

    :goto_176
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_1b4

    .line 1743
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/nickname"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_176

    .line 1751
    :cond_1b4
    const/4 v2, 0x0

    move v3, v2

    :goto_1b6
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_1f4

    .line 1753
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1b6

    .line 1761
    :cond_1f4
    const/4 v2, 0x0

    move v3, v2

    :goto_1f6
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_283

    .line 1764
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22c

    .line 1766
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1767
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1770
    :cond_22c
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1f6

    .line 1781
    :cond_283
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    if-eqz v2, :cond_2b1

    .line 1783
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v11, "raw_contact_id"

    invoke-virtual {v3, v11, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v11, "mimetype"

    const-string v12, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v11, "data1"

    iget-object v12, v1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    :cond_2b1
    const/4 v2, 0x0

    move v3, v2

    :goto_2b3
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_311

    .line 1793
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2b3

    .line 1803
    :cond_311
    const/4 v2, 0x0

    move v3, v2

    :goto_313
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_381

    .line 1805
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data5"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data6"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_313

    .line 1816
    :cond_381
    const/4 v2, 0x0

    move v3, v2

    :goto_383
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_452

    .line 1818
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data4"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data5"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data6"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data7"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data8"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data9"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data10"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data10:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_383

    .line 1835
    :cond_452
    const/4 v2, 0x0

    move v3, v2

    :goto_454
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4c2

    .line 1837
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data4"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_454

    .line 1848
    :cond_4c2
    const/4 v2, 0x0

    move v3, v2

    :goto_4c4
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_502

    .line 1850
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1848
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4c4

    .line 1859
    :cond_502
    const/4 v2, 0x0

    move v3, v2

    :goto_504
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_542

    .line 1861
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1859
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_504

    .line 1870
    :cond_542
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    if-eqz v2, :cond_578

    .line 1873
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v2

    .line 1881
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "raw_contact_id"

    invoke-virtual {v11, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/photo"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "data15"

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1889
    :cond_578
    const/4 v2, 0x0

    move v3, v2

    :goto_57a
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_5e8

    .line 1891
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1889
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_57a

    .line 1902
    :cond_5e8
    const/4 v2, 0x0

    move v3, v2

    :goto_5ea
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_658

    .line 1904
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1902
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5ea

    .line 1915
    :cond_658
    const/4 v2, 0x0

    move v3, v2

    :goto_65a
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6c8

    .line 1917
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_65a

    .line 1928
    :cond_6c8
    const/4 v2, 0x0

    move v3, v2

    :goto_6ca
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_748

    .line 1930
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1928
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6ca

    .line 1942
    :cond_748
    const/4 v2, 0x0

    move v3, v2

    :goto_74a
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_7a8

    .line 1944
    sget-object v11, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/relation"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_74a

    .line 1701
    :cond_7a8
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_68

    .line 1956
    :cond_7ad
    const/4 v1, 0x1

    :try_start_7ae
    const-string v2, "applybatch all start"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1957
    const-string v1, "com.android.contacts"

    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 1958
    const-string v3, ""
    :try_end_7bd
    .catch Landroid/os/RemoteException; {:try_start_7ae .. :try_end_7bd} :catch_10ba
    .catch Landroid/content/OperationApplicationException; {:try_start_7ae .. :try_end_7bd} :catch_88b
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7ae .. :try_end_7bd} :catch_892
    .catch Ljava/lang/Exception; {:try_start_7ae .. :try_end_7bd} :catch_899

    .line 1960
    const/4 v1, 0x0

    move v2, v1

    :goto_7bf
    if-ge v2, v9, :cond_7fa

    .line 1962
    :try_start_7c1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v1, v10, v2

    aget-object v1, v5, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1960
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7bf

    .line 1966
    :cond_7fa
    const/4 v1, 0x0

    :goto_7fb
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_837

    .line 1967
    sget-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    add-int/lit8 v1, v6, 0x1

    goto :goto_7fb

    .line 1970
    :cond_837
    const/4 v1, 0x0

    :goto_838
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_87c

    .line 1971
    sget-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v6, "key_number"

    add-int/lit8 v9, v1, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v6, "speed_dial_data_id"

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v5, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v10, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1970
    add-int/lit8 v1, v9, 0x1

    goto :goto_838

    .line 1976
    :cond_87c
    const-string v1, "com.android.contacts"

    sget-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_883
    .catch Landroid/os/RemoteException; {:try_start_7c1 .. :try_end_883} :catch_885
    .catch Landroid/content/OperationApplicationException; {:try_start_7c1 .. :try_end_883} :catch_10b7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7c1 .. :try_end_883} :catch_10b4
    .catch Ljava/lang/Exception; {:try_start_7c1 .. :try_end_883} :catch_10b1

    goto/16 :goto_36

    .line 1979
    :catch_885
    move-exception v1

    .line 1980
    :goto_886
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_36

    .line 1982
    :catch_88b
    move-exception v1

    move-object v3, v4

    .line 1983
    :goto_88d
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_36

    .line 1985
    :catch_892
    move-exception v1

    move-object v3, v4

    .line 1986
    :goto_894
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto/16 :goto_36

    .line 1988
    :catch_899
    move-exception v1

    move-object v3, v4

    .line 1989
    :goto_89b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_36

    .line 1996
    :pswitch_8a0
    const/4 v2, 0x1

    const-string v3, "applybatch BATCH_METHOD_PART"

    invoke-static {v2, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1997
    const/4 v2, 0x0

    move v5, v1

    move-object v3, v4

    move v6, v2

    :goto_8aa
    if-ge v6, v9, :cond_36

    .line 1999
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wssnps/database/smlContactItem;

    .line 2000
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2001
    aput v11, v10, v5

    .line 2003
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8cc

    .line 2005
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    const-string v4, "vnd.sec.contact.phone"

    iput-object v4, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    .line 2007
    :cond_8cc
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8dc

    .line 2009
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    const-string v4, "vnd.sec.contact.phone"

    iput-object v4, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    .line 2012
    :cond_8dc
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "account_type"

    iget-object v13, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v13, v13, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "account_name"

    iget-object v13, v1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v13, v13, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_9b6

    .line 2020
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-virtual {v2, v12, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data5"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data4"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data6"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data9"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data7"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data8"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    :cond_9b6
    const/4 v2, 0x0

    move v4, v2

    :goto_9b8
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_9f6

    .line 2039
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/nickname"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_9b8

    .line 2047
    :cond_9f6
    const/4 v2, 0x0

    move v4, v2

    :goto_9f8
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_a36

    .line 2049
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2047
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_9f8

    .line 2057
    :cond_a36
    const/4 v2, 0x0

    move v4, v2

    :goto_a38
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_ac5

    .line 2059
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a6e

    .line 2061
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2062
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2065
    :cond_a6e
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_a38

    .line 2076
    :cond_ac5
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    if-eqz v2, :cond_af3

    .line 2078
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "raw_contact_id"

    invoke-virtual {v4, v12, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "data1"

    iget-object v13, v1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    :cond_af3
    const/4 v2, 0x0

    move v4, v2

    :goto_af5
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_b53

    .line 2088
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_af5

    .line 2098
    :cond_b53
    const/4 v2, 0x0

    move v4, v2

    :goto_b55
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_bc3

    .line 2100
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data5"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data6"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2098
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_b55

    .line 2111
    :cond_bc3
    const/4 v2, 0x0

    move v4, v2

    :goto_bc5
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_c94

    .line 2113
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data4"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data5"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data6"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data7"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data8"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data9"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data10"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data10:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2111
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_bc5

    .line 2130
    :cond_c94
    const/4 v2, 0x0

    move v4, v2

    :goto_c96
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_d04

    .line 2132
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data4"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2130
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_c96

    .line 2143
    :cond_d04
    const/4 v2, 0x0

    move v4, v2

    :goto_d06
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_d44

    .line 2145
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2143
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_d06

    .line 2154
    :cond_d44
    const/4 v2, 0x0

    move v4, v2

    :goto_d46
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_d84

    .line 2156
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2154
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_d46

    .line 2165
    :cond_d84
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    if-eqz v2, :cond_dba

    .line 2168
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v2

    .line 2176
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "raw_contact_id"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/photo"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data15"

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2184
    :cond_dba
    const/4 v2, 0x0

    move v4, v2

    :goto_dbc
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_e2a

    .line 2186
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2184
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_dbc

    .line 2197
    :cond_e2a
    const/4 v2, 0x0

    move v4, v2

    :goto_e2c
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_e9a

    .line 2199
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_e2c

    .line 2210
    :cond_e9a
    const/4 v2, 0x0

    move v4, v2

    :goto_e9c
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_f0a

    .line 2212
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2210
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_e9c

    .line 2223
    :cond_f0a
    const/4 v2, 0x0

    move v4, v2

    :goto_f0c
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_f8a

    .line 2225
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_f0c

    .line 2236
    :cond_f8a
    add-int/lit8 v2, v5, 0x1

    .line 2237
    if-eqz v6, :cond_f94

    add-int/lit8 v1, v6, 0x1

    rem-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_f98

    :cond_f94
    add-int/lit8 v1, v9, -0x1

    if-ne v6, v1, :cond_10be

    .line 2240
    :cond_f98
    const/4 v1, 0x1

    :try_start_f99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applybatch part start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2241
    const-string v1, "com.android.contacts"

    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 2243
    const/4 v1, 0x0

    move v4, v1

    :goto_fbf
    if-ge v4, v2, :cond_ffa

    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v1, v10, v4

    aget-object v1, v5, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v12, 0x1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ","

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2243
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_fbf

    .line 2249
    :cond_ffa
    const/4 v1, 0x0

    :goto_ffb
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1037

    .line 2250
    sget-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v11, v1, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2249
    add-int/lit8 v1, v11, 0x1

    goto :goto_ffb

    .line 2253
    :cond_1037
    const/4 v1, 0x0

    :goto_1038
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_107c

    .line 2254
    sget-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v11, "key_number"

    add-int/lit8 v12, v1, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v11, "speed_dial_data_id"

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v5, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v13, 0x1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2253
    add-int/lit8 v1, v12, 0x1

    goto :goto_1038

    .line 2259
    :cond_107c
    const-string v1, "com.android.contacts"

    sget-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 2260
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 2261
    sget-object v1, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2263
    const/4 v1, 0x0

    .line 2264
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1091
    .catch Landroid/os/RemoteException; {:try_start_f99 .. :try_end_1091} :catch_1099
    .catch Landroid/content/OperationApplicationException; {:try_start_f99 .. :try_end_1091} :catch_109f
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_f99 .. :try_end_1091} :catch_10a5
    .catch Ljava/lang/Exception; {:try_start_f99 .. :try_end_1091} :catch_10ab

    move-object v2, v3

    .line 1997
    :goto_1092
    add-int/lit8 v3, v6, 0x1

    move v5, v1

    move v6, v3

    move-object v3, v2

    goto/16 :goto_8aa

    .line 2265
    :catch_1099
    move-exception v1

    .line 2266
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_36

    .line 2268
    :catch_109f
    move-exception v1

    .line 2269
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_36

    .line 2271
    :catch_10a5
    move-exception v1

    .line 2272
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto/16 :goto_36

    .line 2274
    :catch_10ab
    move-exception v1

    .line 2275
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_36

    .line 1988
    :catch_10b1
    move-exception v1

    goto/16 :goto_89b

    .line 1985
    :catch_10b4
    move-exception v1

    goto/16 :goto_894

    .line 1982
    :catch_10b7
    move-exception v1

    goto/16 :goto_88d

    .line 1979
    :catch_10ba
    move-exception v1

    move-object v3, v4

    goto/16 :goto_886

    :cond_10be
    move v1, v2

    move-object v2, v3

    goto :goto_1092

    .line 1696
    nop

    :pswitch_data_10c2
    .packed-switch 0x0
        :pswitch_60
        :pswitch_8a0
    .end packed-switch
.end method

.method public static addGroup(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2549
    .line 2550
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2551
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 2553
    const-string v1, "title"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    const-string v1, "group_visible"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2555
    const-string v1, "account_name"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    const-string v1, "account_type"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    :cond_2c
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1}, Lcom/wssnps/database/smlContactItem;->insertContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 2562
    if-nez v0, :cond_56

    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error add contact. luid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2564
    const/4 v0, 0x0

    .line 2569
    :goto_55
    return v0

    .line 2567
    :cond_56
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2568
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_55
.end method

.method public static deleteContact(Landroid/content/ContentResolver;I)Z
    .registers 7
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    .line 3676
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3677
    .local v1, key:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3678
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3680
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1c

    .line 3681
    const/4 v2, 0x1

    .line 3683
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public static deleteContactBatch(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x32

    const/4 v0, 0x0

    .line 3689
    .line 3693
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3694
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3695
    array-length v6, v5

    .line 3697
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v0

    .line 3701
    :goto_14
    if-ge v4, v6, :cond_72

    .line 3703
    sub-int v1, v6, v4

    if-le v1, v3, :cond_3d

    move v2, v3

    .line 3704
    :goto_1b
    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v0

    .line 3705
    :goto_20
    if-ge v1, v2, :cond_4c

    .line 3707
    add-int v8, v4, v1

    aget-object v8, v5, v8

    invoke-static {v8}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 3709
    if-nez v1, :cond_41

    .line 3711
    const-string v8, " ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3717
    :goto_33
    add-int v8, v4, v1

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3705
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 3703
    :cond_3d
    sub-int v1, v6, v4

    move v2, v1

    goto :goto_1b

    .line 3715
    :cond_41
    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_47

    goto :goto_33

    .line 3724
    :catch_47
    move-exception v1

    .line 3726
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3730
    :goto_4b
    return v0

    .line 3720
    :cond_4c
    :try_start_4c
    const-string v1, " ) "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3721
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id in "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v2, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6e} :catch_47

    .line 3701
    add-int/lit8 v1, v4, 0x32

    move v4, v1

    goto :goto_14

    .line 3730
    :cond_72
    const/4 v0, 0x1

    goto :goto_4b
.end method

.method public static deleteGroup(Landroid/content/ContentResolver;I)Z
    .registers 7
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    .line 3579
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3580
    .local v1, key:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3581
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3583
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1c

    .line 3584
    const/4 v2, 0x1

    .line 3586
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public static deleteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 4
    .parameter "cResolver"
    .parameter "where"

    .prologue
    .line 3614
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 3616
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3618
    const/4 v1, 0x1

    return v1
.end method

.method public static deleteLocalAccoutGroup(Landroid/content/ContentResolver;)Z
    .registers 4
    .parameter

    .prologue
    .line 3592
    const-string v0, "vnd.sec.contact.phone"

    .line 3593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3596
    invoke-static {p0, v0}, Lcom/wssnps/database/smlContactItem;->deleteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteLocalAccoutRawContacts(Landroid/content/ContentResolver;)Z
    .registers 4
    .parameter

    .prologue
    .line 3623
    const-string v0, "vnd.sec.contact.phone"

    .line 3624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3627
    invoke-static {p0, v0}, Lcom/wssnps/database/smlContactItem;->deleteRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteLocalAccoutRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3632
    const-string v0, "vnd.sec.contact.phone"

    .line 3633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3637
    invoke-static {p0, v0}, Lcom/wssnps/database/smlContactItem;->deleteRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3667
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 3670
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3671
    const/4 v0, 0x1

    return v0
.end method

.method public static getContact(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/wssnps/database/smlContactItem;
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 2687
    const/16 v0, 0x10

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "account_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "account_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "dirty"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "mimetype"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "data3"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "data4"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "data5"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "data6"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "data7"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "data8"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "data9"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "data10"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "data15"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 2706
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "key_number"

    aput-object v1, v6, v0

    .line 2707
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2709
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 2710
    const/4 v0, 0x0

    :goto_70
    array-length v1, v2

    if-ge v0, v1, :cond_7f

    .line 2711
    aget-object v1, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 2714
    :cond_7f
    new-instance v9, Lcom/wssnps/database/smlContactItem;

    invoke-direct {v9}, Lcom/wssnps/database/smlContactItem;-><init>()V

    .line 2718
    const-string v0, "%s = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2719
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2720
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5da

    .line 2722
    const-string v0, "mimetype"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2724
    :cond_b0
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2726
    iget-object v1, v9, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    const-string v0, "account_name"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    .line 2727
    iget-object v1, v9, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    const-string v0, "account_type"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    .line 2728
    const-string v0, "dirty"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/wssnps/database/smlContactItem;->Dirty:Ljava/lang/String;

    .line 2731
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_190

    .line 2733
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2734
    const-string v0, "data3"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 2735
    const-string v0, "data2"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 2736
    const-string v0, "data5"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    .line 2737
    const-string v0, "data4"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    .line 2738
    const-string v0, "data6"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    .line 2739
    const-string v0, "data9"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    .line 2740
    const-string v0, "data7"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    .line 2741
    const-string v0, "data8"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    .line 2742
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2746
    :cond_190
    const-string v0, "vnd.android.cursor.item/note"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b4

    .line 2748
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2749
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2750
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2754
    :cond_1b4
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1d8

    .line 2756
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2757
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2758
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    :cond_1d8
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_269

    .line 2764
    new-instance v13, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v13}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2765
    const-string v0, "data2"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 2766
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2768
    const-string v0, "data3"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 2770
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v13, Lcom/wssnps/database/smlContactItem$ContactData;->_id:I

    .line 2771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speed_dial_data_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/wssnps/database/smlContactItem$ContactData;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2772
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_261

    .line 2774
    const-string v1, "key_number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 2776
    :cond_261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2778
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2782
    :cond_269
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b1

    .line 2784
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2785
    const-string v0, "data2"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 2786
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2787
    const-string v0, "data3"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 2788
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2792
    :cond_2b1
    const-string v0, "vnd.android.cursor.item/im"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_30b

    .line 2794
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2795
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2796
    const-string v0, "data2"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 2797
    const-string v0, "data5"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    .line 2798
    const-string v0, "data6"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    .line 2800
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2804
    :cond_30b
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3d1

    .line 2806
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2807
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2808
    const-string v0, "data2"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 2809
    const-string v0, "data4"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    .line 2810
    const-string v0, "data5"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    .line 2811
    const-string v0, "data6"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    .line 2812
    const-string v0, "data7"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    .line 2813
    const-string v0, "data8"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    .line 2814
    const-string v0, "data9"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    .line 2815
    const-string v0, "data10"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data10:Ljava/lang/String;

    .line 2816
    const-string v0, "data3"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 2818
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2822
    :cond_3d1
    const-string v0, "vnd.android.cursor.item/website"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3f5

    .line 2824
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2825
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2826
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2830
    :cond_3f5
    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_486

    .line 2832
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2833
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2834
    const-string v0, "data2"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 2835
    const-string v0, "data3"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 2837
    const-string v0, "data15"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 2839
    iget-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_459

    .line 2840
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2841
    :cond_459
    iget-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_468

    .line 2842
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2843
    :cond_468
    iget-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_477

    .line 2844
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2845
    :cond_477
    iget-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_486

    .line 2846
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
    :cond_486
    const-string v0, "vnd.android.cursor.item/relation"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4ce

    .line 2851
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2852
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2853
    const-string v0, "data2"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 2854
    const-string v0, "data3"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 2855
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2858
    :cond_4ce
    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_501

    .line 2860
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, v9, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    .line 2862
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_501

    .line 2864
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    .line 2869
    :cond_501
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_55b

    .line 2871
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2872
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2873
    const-string v0, "data2"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    .line 2874
    const-string v0, "data4"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    .line 2875
    const-string v0, "data3"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    .line 2876
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2880
    :cond_55b
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_57f

    .line 2882
    new-instance v1, Lcom/wssnps/database/smlContactItem$ContactData;

    invoke-direct {v1}, Lcom/wssnps/database/smlContactItem$ContactData;-><init>()V

    .line 2883
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 2884
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2888
    :cond_57f
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5d4

    .line 2892
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2896
    const-string v0, "data15"

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 2897
    if-eqz v0, :cond_5d4

    array-length v2, v0

    if-eqz v2, :cond_5d4

    .line 2902
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2904
    const/4 v0, 0x0

    :goto_5b0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v0, v3, :cond_5c9

    .line 2905
    rem-int/lit8 v3, v0, 0x4c

    if-nez v3, :cond_5bf

    .line 2906
    const-string v3, "\r\n "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2907
    :cond_5bf
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2904
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b0

    .line 2909
    :cond_5c9
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2910
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    .line 2913
    :cond_5d4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 2915
    :cond_5da
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2917
    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    if-eqz v0, :cond_5ed

    iget-object v0, v9, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_631

    .line 2919
    :cond_5ed
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "account_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "account_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "dirty"

    aput-object v1, v2, v0

    .line 2924
    const-string v0, "%s = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2925
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2926
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2927
    iget-object v1, v9, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    .line 2928
    iget-object v1, v9, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    .line 2929
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2932
    :cond_631
    return-object v9
.end method

.method public static getContactsIndexArray(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2650
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    .line 2652
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2655
    sget-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v0}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v0

    if-ne p1, v0, :cond_76

    .line 2656
    const-string v0, "deleted = 0 AND (account_type = \'%s\')"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "vnd.sec.contact.sim"

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2663
    :goto_22
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2665
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2666
    const-string v2, "0\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2668
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 2672
    :cond_43
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2673
    sget-object v1, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_63

    .line 2674
    sget-object v1, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2676
    :cond_63
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_43

    .line 2678
    :cond_69
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2680
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2682
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2657
    :cond_76
    sget-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v0}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v0

    if-ne p1, v0, :cond_8b

    .line 2658
    const-string v0, "deleted = 0 AND (account_type = \'%s\')"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "vnd.sec.contact.sim2"

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 2659
    :cond_8b
    sget-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_BR:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v0}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v0

    if-ne p1, v0, :cond_a0

    .line 2660
    const-string v0, "contact_id is NOT NULL AND deleted=0 AND account_type == \'%s\'"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "vnd.sec.contact.phone"

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 2662
    :cond_a0
    const-string v0, "contact_id is NOT NULL AND deleted = 0 AND ((account_type = \'%s\') OR (account_type = \'%s\') OR (account_type = \'%s\'))"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "vnd.sec.contact.phone"

    aput-object v3, v1, v7

    const-string v3, "com.google"

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v5, "com.android.exchange"

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_22
.end method

.method public static getContactsSize(Landroid/content/ContentResolver;I)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2632
    .line 2634
    const-string v0, ""

    .line 2636
    sget-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_BR:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v0}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2a

    .line 2637
    const-string v0, "contact_id is NOT NULL AND deleted=0 AND account_type == \'%s\'"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "vnd.sec.contact.phone"

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2641
    :goto_19
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2642
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2643
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2644
    return v1

    .line 2639
    :cond_2a
    const-string v0, "contact_id is NOT NULL AND deleted=0 AND ((account_type = \'%s\') OR (account_type = \'%s\') OR (account_type = \'%s\'))"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "vnd.sec.contact.phone"

    aput-object v3, v1, v4

    const-string v3, "com.google"

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v4, "com.android.exchange"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_19
.end method

.method public static getGroupCount(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 10
    .parameter "cResolver"
    .parameter "where"

    .prologue
    const/4 v2, 0x0

    .line 2444
    const/4 v7, 0x0

    .line 2446
    .local v7, nCount:I
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    .line 2447
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2448
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2450
    return v7
.end method

.method public static getGroupIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2457
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    .line 2461
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2462
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2464
    const-string v2, "0\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2466
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2468
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2471
    :cond_2f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2474
    :cond_42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2476
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupItem(Landroid/content/ContentResolver;I)Lcom/wssnps/database/smlContactItem;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2504
    .line 2505
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/wssnps/database/smlContactItem;->mApplicationContext:Landroid/content/Context;

    .line 2506
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 2510
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2511
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2512
    const-string v3, "account_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2513
    const-string v4, "account_type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2514
    const-string v5, "system_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2516
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 2518
    new-instance v2, Lcom/wssnps/database/smlContactItem;

    invoke-direct {v2}, Lcom/wssnps/database/smlContactItem;-><init>()V

    .line 2520
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_78

    .line 2521
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    .line 2522
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wssnps/database/smlContactItem;->sGroupDN:Ljava/lang/String;

    .line 2539
    :cond_64
    :goto_64
    iget-object v1, v2, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    .line 2540
    iget-object v1, v2, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    .line 2542
    :cond_74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2543
    return-object v2

    .line 2524
    :cond_78
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    .line 2526
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Contacts"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 2527
    sget-object v1, Lcom/wssnps/database/smlContactItem;->mApplicationContext:Landroid/content/Context;

    const v6, 0x7f040001

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wssnps/database/smlContactItem;->sGroupDN:Ljava/lang/String;

    .line 2529
    :cond_95
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Friends"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 2530
    sget-object v1, Lcom/wssnps/database/smlContactItem;->mApplicationContext:Landroid/content/Context;

    const v6, 0x7f040002

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wssnps/database/smlContactItem;->sGroupDN:Ljava/lang/String;

    .line 2532
    :cond_ac
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Family"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 2533
    sget-object v1, Lcom/wssnps/database/smlContactItem;->mApplicationContext:Landroid/content/Context;

    const v6, 0x7f040003

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wssnps/database/smlContactItem;->sGroupDN:Ljava/lang/String;

    .line 2535
    :cond_c3
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Coworkers"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 2536
    sget-object v1, Lcom/wssnps/database/smlContactItem;->mApplicationContext:Landroid/content/Context;

    const v5, 0x7f040004

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wssnps/database/smlContactItem;->sGroupDN:Ljava/lang/String;

    goto :goto_64
.end method

.method public static getRawContactsCount(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 10
    .parameter "cResolver"
    .parameter "where"

    .prologue
    const/4 v2, 0x0

    .line 3643
    const/4 v7, 0x0

    .line 3645
    .local v7, nCount:I
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    .line 3646
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3647
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 3648
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3649
    return v7
.end method

.method public static getRawContactsIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2483
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2484
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    .line 2487
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2489
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2491
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2494
    :cond_1c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2495
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2497
    :cond_2d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2499
    return-object v6
.end method

.method private static insertContentValues(Landroid/content/ContentResolver;[Landroid/content/ContentValues;Landroid/net/Uri;)I
    .registers 4
    .parameter "cResolver"
    .parameter "cv"
    .parameter "uri"

    .prologue
    .line 3742
    if-eqz p1, :cond_7

    .line 3743
    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3745
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static insertContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter "cResolver"
    .parameter "cv"
    .parameter "uri"

    .prologue
    .line 3734
    if-eqz p1, :cond_7

    .line 3736
    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 3739
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static updateContact(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 3108
    iput p2, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 3110
    sget-object v1, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    .line 3111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    .line 3114
    :cond_f
    const-string v1, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3115
    sget-object v1, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    if-nez v1, :cond_20

    .line 3116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    .line 3117
    :cond_20
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->DeleteSpeedDial(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3121
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactName(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3126
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactNicknameList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3132
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactNoteList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3136
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactTelList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)Ljava/util/List;

    move-result-object v3

    .line 3141
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactInternetCall(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3145
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactEmailList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3149
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactImList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3153
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactAddrList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3157
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactOrgList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3161
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactUrlList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3165
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactGroupList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3169
    invoke-static {p0, p1}, Lcom/wssnps/database/smlContactItem;->updateContactPhoto(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V

    .line 3184
    :try_start_48
    const-string v1, "com.android.contacts"

    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v4

    .line 3186
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 3187
    if-ne v5, v6, :cond_c5

    .line 3189
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    .line 3190
    :goto_60
    if-ge v1, v4, :cond_98

    .line 3191
    sget-object v5, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3190
    add-int/lit8 v1, v7, 0x1

    goto :goto_60

    .line 3194
    :cond_98
    :goto_98
    if-ge v0, v4, :cond_1ab

    .line 3197
    sget-object v1, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "key_number"

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "speed_dial_data_id"

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3194
    add-int/lit8 v0, v7, 0x1

    goto :goto_98

    .line 3206
    :cond_c5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move v1, v0

    .line 3207
    :goto_ca
    if-ge v1, v5, :cond_102

    .line 3208
    sget-object v7, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3207
    add-int/lit8 v1, v9, 0x1

    goto :goto_ca

    .line 3211
    :cond_102
    add-int/lit8 v1, v5, 0x1

    :goto_104
    if-ge v1, v6, :cond_13c

    .line 3212
    sget-object v7, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3211
    add-int/lit8 v1, v9, 0x1

    goto :goto_104

    .line 3215
    :cond_13c
    :goto_13c
    if-ge v0, v5, :cond_169

    .line 3218
    sget-object v1, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "key_number"

    add-int/lit8 v9, v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v7, "speed_dial_data_id"

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3215
    add-int/lit8 v0, v9, 0x1

    goto :goto_13c

    .line 3224
    :cond_169
    add-int/lit8 v0, v5, 0x1

    :goto_16b
    if-ge v0, v6, :cond_1ab

    .line 3227
    sget-object v1, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v7, "key_number"

    add-int/lit8 v8, v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v7, "speed_dial_data_id"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v4, v0

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3224
    add-int/lit8 v0, v8, 0x1

    goto :goto_16b

    .line 3234
    :cond_1ab
    const-string v0, "com.android.contacts"

    sget-object v1, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1b2
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_1b2} :catch_1b8
    .catch Landroid/content/OperationApplicationException; {:try_start_48 .. :try_end_1b2} :catch_1bd
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_48 .. :try_end_1b2} :catch_1c2
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_1b2} :catch_1c7

    .line 3245
    :goto_1b2
    sget-object v0, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3246
    return p2

    .line 3235
    :catch_1b8
    move-exception v0

    .line 3236
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b2

    .line 3237
    :catch_1bd
    move-exception v0

    .line 3238
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1b2

    .line 3239
    :catch_1c2
    move-exception v0

    .line 3240
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_1b2

    .line 3241
    :catch_1c7
    move-exception v0

    .line 3242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b2
.end method

.method private static updateContactAddrList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 4406
    .line 4410
    iget v7, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4414
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4415
    if-nez v2, :cond_48

    .line 4504
    :cond_47
    :goto_47
    return-void

    .line 4420
    :cond_48
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4422
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_14c

    .line 4424
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_122

    move v1, v6

    .line 4430
    :goto_5b
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4432
    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_129

    .line 4434
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data4"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data5"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data6"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data7"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data8"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data9"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data10"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data10:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4447
    add-int/lit8 v0, v1, 0x1

    .line 4455
    :goto_11c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2cc

    .line 4502
    :cond_122
    if-eqz v2, :cond_47

    .line 4503
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_47

    .line 4451
    :cond_129
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_11c

    .line 4460
    :cond_14c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v6

    .line 4462
    :goto_150
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_122

    .line 4464
    if-ge v1, v3, :cond_219

    .line 4466
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data4"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data5"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data6"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data7"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data8"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data9"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data10"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data10:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4480
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4462
    :goto_214
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_150

    .line 4484
    :cond_219
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "raw_contact_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "mimetype"

    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data4"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data5"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data6"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data7"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data8"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data9"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data10"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data10:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_214

    :cond_2cc
    move v1, v0

    goto/16 :goto_5b
.end method

.method public static updateContactBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/database/smlContactItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3251
    .line 3255
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3257
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3258
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3259
    const-string v5, ""

    .line 3262
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 3263
    new-array v9, v8, [I

    .line 3264
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    if-nez v2, :cond_22

    .line 3265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    .line 3267
    :cond_22
    const-string v2, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 3268
    sget-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    if-nez v2, :cond_33

    .line 3269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    .line 3270
    :cond_33
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/wssnps/database/smlContactItem;->DeleteSpeedDial(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 3272
    const/4 v1, 0x0

    move v3, v1

    :goto_3a
    array-length v1, v7

    if-ge v3, v1, :cond_7c8

    .line 3274
    aget-object v1, v7, v3

    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c3

    .line 3276
    aget-object v1, v7, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 3277
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wssnps/database/smlContactItem;

    .line 3278
    aput v11, v9, v3

    .line 3280
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "raw_contact_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3285
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_12f

    .line 3287
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data5"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data4"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data6"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data9"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data7"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data8"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3304
    :cond_12f
    const/4 v2, 0x0

    move v4, v2

    :goto_131
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_173

    .line 3306
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/nickname"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3304
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_131

    .line 3315
    :cond_173
    const/4 v2, 0x0

    move v4, v2

    :goto_175
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_1b7

    .line 3317
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3315
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_175

    .line 3326
    :cond_1b7
    const/4 v2, 0x0

    move v4, v2

    :goto_1b9
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_24a

    .line 3328
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ef

    .line 3330
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3331
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3333
    :cond_1ef
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3326
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1b9

    .line 3344
    :cond_24a
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    if-eqz v2, :cond_27c

    .line 3346
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "data1"

    iget-object v13, v1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3355
    :cond_27c
    const/4 v2, 0x0

    move v4, v2

    :goto_27e
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2e0

    .line 3357
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3355
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_27e

    .line 3368
    :cond_2e0
    const/4 v2, 0x0

    move v4, v2

    :goto_2e2
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_354

    .line 3370
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data5"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data6"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3368
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2e2

    .line 3382
    :cond_354
    const/4 v2, 0x0

    move v4, v2

    :goto_356
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_419

    .line 3384
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data4"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data5"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data6"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data7"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data8"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data9"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data10"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data10:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3382
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_356

    .line 3402
    :cond_419
    const/4 v2, 0x0

    move v4, v2

    :goto_41b
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_48d

    .line 3404
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data4"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3402
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_41b

    .line 3416
    :cond_48d
    const/4 v2, 0x0

    move v4, v2

    :goto_48f
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_4d1

    .line 3418
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3416
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_48f

    .line 3427
    :cond_4d1
    const/4 v2, 0x0

    move v4, v2

    :goto_4d3
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_515

    .line 3429
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3427
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4d3

    .line 3439
    :cond_515
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    if-eqz v2, :cond_5c3

    .line 3442
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v2

    .line 3450
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/photo"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "data15"

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3470
    :goto_54f
    const/4 v2, 0x0

    move v4, v2

    :goto_551
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_5f2

    .line 3472
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3470
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_551

    .line 3460
    :cond_5c3
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "data15"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_54f

    .line 3484
    :cond_5f2
    const/4 v2, 0x0

    move v4, v2

    :goto_5f4
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_666

    .line 3486
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3484
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5f4

    .line 3498
    :cond_666
    const/4 v2, 0x0

    move v4, v2

    :goto_668
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_6da

    .line 3500
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3498
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_668

    .line 3512
    :cond_6da
    const/4 v2, 0x0

    move v4, v2

    :goto_6dc
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_75f

    .line 3514
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data14"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data14:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data15"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3512
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_6dc

    .line 3527
    :cond_75f
    const/4 v2, 0x0

    move v4, v2

    :goto_761
    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_7c3

    .line 3529
    sget-object v12, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "raw_contact_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/relation"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data1"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data2"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string v14, "data3"

    iget-object v2, v1, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v2, v2, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3527
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_761

    .line 3272
    :cond_7c3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_3a

    .line 3543
    :cond_7c8
    const/4 v1, 0x1

    :try_start_7c9
    const-string v2, "updateContactBatchstart"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3544
    const-string v1, "com.android.contacts"

    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 3545
    const-string v2, ""
    :try_end_7da
    .catch Landroid/os/RemoteException; {:try_start_7c9 .. :try_end_7da} :catch_8be
    .catch Landroid/content/OperationApplicationException; {:try_start_7c9 .. :try_end_7da} :catch_8c5

    .line 3546
    const/4 v1, 0x0

    :goto_7db
    if-ge v1, v8, :cond_80a

    .line 3548
    :try_start_7dd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v9, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3546
    add-int/lit8 v1, v1, 0x1

    goto :goto_7db

    .line 3552
    :cond_80a
    const/4 v1, 0x0

    :goto_80b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_847

    .line 3553
    sget-object v4, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3552
    add-int/lit8 v1, v7, 0x1

    goto :goto_80b

    .line 3556
    :cond_847
    const/4 v1, 0x0

    :goto_848
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_88c

    .line 3557
    sget-object v4, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v7, "key_number"

    add-int/lit8 v8, v1, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v7, "speed_dial_data_id"

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3556
    add-int/lit8 v1, v8, 0x1

    goto :goto_848

    .line 3563
    :cond_88c
    const-string v1, "com.android.contacts"

    sget-object v3, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_895
    .catch Landroid/os/RemoteException; {:try_start_7dd .. :try_end_895} :catch_8d3
    .catch Landroid/content/OperationApplicationException; {:try_start_7dd .. :try_end_895} :catch_8cc

    move-object v1, v2

    .line 3570
    :goto_896
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContactBatchstart sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3571
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3572
    sget-object v2, Lcom/wssnps/database/smlContactItem;->speed_ops:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3573
    return-object v1

    .line 3565
    :catch_8be
    move-exception v1

    move-object v2, v1

    move-object v1, v5

    .line 3566
    :goto_8c1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_896

    .line 3567
    :catch_8c5
    move-exception v1

    move-object v2, v1

    move-object v1, v5

    .line 3568
    :goto_8c8
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_896

    .line 3567
    :catch_8cc
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v2

    move-object/from16 v2, v16

    goto :goto_8c8

    .line 3565
    :catch_8d3
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v2

    move-object/from16 v2, v16

    goto :goto_8c1
.end method

.method private static updateContactEmailList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 4245
    .line 4249
    iget v7, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4253
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4254
    if-nez v2, :cond_48

    .line 4321
    :cond_47
    :goto_47
    return-void

    .line 4259
    :cond_48
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4261
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_eb

    .line 4263
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c2

    move v1, v6

    .line 4269
    :goto_5b
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4271
    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_c8

    .line 4273
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4279
    add-int/lit8 v0, v1, 0x1

    .line 4287
    :goto_bc
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1a9

    .line 4319
    :cond_c2
    if-eqz v2, :cond_47

    .line 4320
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 4283
    :cond_c8
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_bc

    .line 4292
    :cond_eb
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v6

    .line 4294
    :goto_ef
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c2

    .line 4296
    if-ge v1, v3, :cond_157

    .line 4298
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4305
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4294
    :goto_153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ef

    .line 4309
    :cond_157
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "raw_contact_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "mimetype"

    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_153

    :cond_1a9
    move v1, v0

    goto/16 :goto_5b
.end method

.method private static updateContactGroupList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 4660
    .line 4664
    iget v7, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4668
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4669
    if-nez v2, :cond_48

    .line 4730
    :cond_47
    :goto_47
    return-void

    .line 4674
    :cond_48
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4676
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_cb

    .line 4678
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a2

    move v1, v6

    .line 4684
    :goto_5b
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4686
    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a8

    .line 4688
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4692
    add-int/lit8 v0, v1, 0x1

    .line 4700
    :goto_9c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_149

    .line 4728
    :cond_a2
    if-eqz v2, :cond_47

    .line 4729
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 4696
    :cond_a8
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_9c

    .line 4705
    :cond_cb
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v6

    .line 4707
    :goto_cf
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a2

    .line 4709
    if-ge v1, v3, :cond_117

    .line 4711
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4716
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4707
    :goto_113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cf

    .line 4720
    :cond_117
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "raw_contact_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "mimetype"

    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_113

    :cond_149
    move v1, v0

    goto/16 :goto_5b
.end method

.method private static updateContactImList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 4324
    .line 4328
    iget v7, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4332
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4333
    if-nez v2, :cond_48

    .line 4403
    :cond_47
    :goto_47
    return-void

    .line 4338
    :cond_48
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4340
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_fc

    .line 4342
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d2

    move v1, v6

    .line 4348
    :goto_5b
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4350
    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_d9

    .line 4352
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data5"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data6"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4359
    add-int/lit8 v0, v1, 0x1

    .line 4367
    :goto_cc
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1da

    .line 4401
    :cond_d2
    if-eqz v2, :cond_47

    .line 4402
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_47

    .line 4363
    :cond_d9
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_cc

    .line 4372
    :cond_fc
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v6

    .line 4374
    :goto_100
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d2

    .line 4376
    if-ge v1, v3, :cond_178

    .line 4378
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data5"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data6"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4386
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4374
    :goto_174
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_100

    .line 4390
    :cond_178
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "raw_contact_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "mimetype"

    const-string v8, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data5"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data6"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_174

    :cond_1da
    move v1, v0

    goto/16 :goto_5b
.end method

.method private static updateContactInternetCall(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 4915
    .line 4918
    iget v6, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4922
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4925
    if-nez v0, :cond_48

    .line 4966
    :cond_47
    :goto_47
    return-void

    .line 4930
    :cond_48
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 4931
    if-lez v1, :cond_b5

    .line 4933
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 4935
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    if-eqz v1, :cond_8d

    .line 4937
    sget-object v1, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data1"

    iget-object v4, p1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4964
    :cond_87
    :goto_87
    if-eqz v0, :cond_47

    .line 4965
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 4945
    :cond_8d
    sget-object v1, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 4954
    :cond_b5
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    if-eqz v1, :cond_87

    .line 4956
    sget-object v1, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data1"

    iget-object v4, p1, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87
.end method

.method private static updateContactName(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 3932
    .line 3935
    iget v6, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 3937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3939
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3940
    if-nez v1, :cond_48

    .line 3995
    :cond_47
    :goto_47
    return-void

    .line 3945
    :cond_48
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 3946
    if-lez v0, :cond_132

    .line 3948
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 3950
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10a

    .line 3952
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "_id=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data5"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data4"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data6"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data9"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data7"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data8"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3993
    :cond_103
    :goto_103
    if-eqz v1, :cond_47

    .line 3994
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_47

    .line 3968
    :cond_10a
    sget-object v0, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 3976
    :cond_132
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_103

    .line 3978
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "raw_contact_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data5"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data4"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data6"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data9"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data7"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data8"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_103
.end method

.method private static updateContactNicknameList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 3998
    .line 4002
    iget v7, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4006
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4007
    if-nez v2, :cond_48

    .line 4068
    :cond_47
    :goto_47
    return-void

    .line 4012
    :cond_48
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4014
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_cb

    .line 4016
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a2

    move v1, v6

    .line 4022
    :goto_5b
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4024
    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a8

    .line 4026
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4030
    add-int/lit8 v0, v1, 0x1

    .line 4038
    :goto_9c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_149

    .line 4066
    :cond_a2
    if-eqz v2, :cond_47

    .line 4067
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 4034
    :cond_a8
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_9c

    .line 4043
    :cond_cb
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v6

    .line 4045
    :goto_cf
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a2

    .line 4047
    if-ge v1, v3, :cond_117

    .line 4049
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4054
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4045
    :goto_113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cf

    .line 4058
    :cond_117
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "raw_contact_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "mimetype"

    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_113

    :cond_149
    move v1, v0

    goto/16 :goto_5b
.end method

.method private static updateContactNoteList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 4072
    .line 4076
    iget v7, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4080
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4081
    if-nez v2, :cond_48

    .line 4142
    :cond_47
    :goto_47
    return-void

    .line 4086
    :cond_48
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4088
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_cb

    .line 4090
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a2

    move v1, v6

    .line 4096
    :goto_5b
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4098
    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a8

    .line 4100
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4104
    add-int/lit8 v0, v1, 0x1

    .line 4112
    :goto_9c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_149

    .line 4140
    :cond_a2
    if-eqz v2, :cond_47

    .line 4141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 4108
    :cond_a8
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_9c

    .line 4117
    :cond_cb
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v6

    .line 4119
    :goto_cf
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a2

    .line 4121
    if-ge v1, v3, :cond_117

    .line 4123
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4128
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4119
    :goto_113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cf

    .line 4132
    :cond_117
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "raw_contact_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "mimetype"

    const-string v8, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_113

    :cond_149
    move v1, v0

    goto/16 :goto_5b
.end method

.method private static updateContactOrgList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 4507
    .line 4511
    iget v7, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4515
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4516
    if-nez v2, :cond_48

    .line 4584
    :cond_47
    :goto_47
    return-void

    .line 4521
    :cond_48
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4523
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_fc

    .line 4525
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d2

    move v1, v6

    .line 4531
    :goto_5b
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4533
    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_d9

    .line 4535
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data4"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4542
    add-int/lit8 v0, v1, 0x1

    .line 4550
    :goto_cc
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1ba

    .line 4582
    :cond_d2
    if-eqz v2, :cond_47

    .line 4583
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_47

    .line 4546
    :cond_d9
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_cc

    .line 4555
    :cond_fc
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v6

    .line 4557
    :goto_100
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d2

    .line 4559
    if-ge v1, v3, :cond_168

    .line 4561
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data4"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4568
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4557
    :goto_164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_100

    .line 4572
    :cond_168
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "raw_contact_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "mimetype"

    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data4"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_164

    :cond_1ba
    move v1, v0

    goto/16 :goto_5b
.end method

.method private static updateContactPhoto(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 4733
    .line 4736
    iget v6, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4740
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4741
    if-nez v0, :cond_48

    .line 4800
    :cond_47
    :goto_47
    return-void

    .line 4746
    :cond_48
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 4747
    if-lez v1, :cond_c3

    .line 4749
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 4751
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    if-eqz v1, :cond_95

    .line 4754
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v1

    .line 4762
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_id=?"

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data15"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4798
    :cond_8f
    :goto_8f
    if-eqz v0, :cond_47

    .line 4799
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 4770
    :cond_95
    sget-object v1, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_id=?"

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data15"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 4780
    :cond_c3
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    if-eqz v1, :cond_8f

    .line 4783
    iget-object v1, p1, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v1

    .line 4791
    sget-object v2, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data15"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f
.end method

.method private static updateContactTelList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)Ljava/util/List;
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/wssnps/database/smlContactItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 4146
    .line 4150
    iget v8, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4151
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4153
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4154
    if-nez v2, :cond_4f

    move-object v0, v7

    .line 4240
    :goto_4e
    return-object v0

    .line 4159
    :cond_4f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4161
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_120

    .line 4163
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f5

    move v1, v6

    .line 4169
    :goto_62
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 4171
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_fd

    .line 4173
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 4175
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4176
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4178
    :cond_9c
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "_id=?"

    new-array v8, v11, [Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v6

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v5, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v5, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v5, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4185
    add-int/lit8 v0, v1, 0x1

    .line 4193
    :goto_ef
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_251

    .line 4238
    :cond_f5
    if-eqz v2, :cond_fa

    .line 4239
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_fa
    move-object v0, v7

    .line 4240
    goto/16 :goto_4e

    .line 4189
    :cond_fd
    sget-object v0, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v8, v11, [Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v6

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_ef

    .line 4198
    :cond_120
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v6

    .line 4200
    :goto_124
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f5

    .line 4202
    if-ge v1, v3, :cond_1bf

    .line 4204
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_160

    .line 4206
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4207
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4209
    :cond_160
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "_id=?"

    new-array v9, v11, [Ljava/lang/String;

    const-string v10, "_id"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v9, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v9, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v9, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4216
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4200
    :goto_1ba
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_124

    .line 4220
    :cond_1bf
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1fe

    .line 4222
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e0

    .line 4223
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4224
    :cond_1e0
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4225
    sget-object v0, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4227
    :cond_1fe
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "raw_contact_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "mimetype"

    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v9, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v9, "data2"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v9, "data3"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ba

    :cond_251
    move v1, v0

    goto/16 :goto_62
.end method

.method private static updateContactUrlList(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 4587
    .line 4591
    iget v7, p1, Lcom/wssnps/database/smlContactItem;->_id:I

    .line 4593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4595
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4596
    if-nez v2, :cond_48

    .line 4657
    :cond_47
    :goto_47
    return-void

    .line 4601
    :cond_48
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4603
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_cb

    .line 4605
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a2

    move v1, v6

    .line 4611
    :goto_5b
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4613
    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a8

    .line 4615
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4619
    add-int/lit8 v0, v1, 0x1

    .line 4627
    :goto_9c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_149

    .line 4655
    :cond_a2
    if-eqz v2, :cond_47

    .line 4656
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 4623
    :cond_a8
    sget-object v3, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_9c

    .line 4632
    :cond_cb
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v6

    .line 4634
    :goto_cf
    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a2

    .line 4636
    if-ge v1, v3, :cond_117

    .line 4638
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4643
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4634
    :goto_113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cf

    .line 4647
    :cond_117
    sget-object v4, Lcom/wssnps/database/smlContactItem;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "raw_contact_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "mimetype"

    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v8, "data1"

    iget-object v0, p1, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    iget-object v0, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_113

    :cond_149
    move v1, v0

    goto/16 :goto_5b
.end method

.method private static updateContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;)I
    .registers 5
    .parameter "cResolver"
    .parameter "cv"
    .parameter "uri"
    .parameter "where"

    .prologue
    .line 3749
    if-eqz p1, :cond_8

    .line 3750
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3752
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static updateGroup(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3090
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3095
    iget-object v2, p1, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 3097
    const-string v2, "title"

    iget-object v3, p1, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    const-string v2, "group_visible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3101
    :cond_33
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v2, v1}, Lcom/wssnps/database/smlContactItem;->updateContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 3103
    return v0
.end method

.method public static updateGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 5
    .parameter "cResolver"
    .parameter "cv"
    .parameter "where"

    .prologue
    .line 3602
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 3604
    .local v0, uri:Landroid/net/Uri;
    if-nez p1, :cond_6

    .line 3605
    const/4 v1, 0x0

    .line 3609
    :goto_5
    return v1

    .line 3607
    :cond_6
    invoke-static {p0, p1, v0, p2}, Lcom/wssnps/database/smlContactItem;->updateContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;)I

    .line 3609
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public static updateRawContacts(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3654
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 3657
    if-nez p1, :cond_16

    .line 3658
    const/4 v0, 0x0

    .line 3662
    :goto_15
    return v0

    .line 3660
    :cond_16
    invoke-static {p0, p1, v0, p2}, Lcom/wssnps/database/smlContactItem;->updateContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;)I

    .line 3662
    const/4 v0, 0x1

    goto :goto_15
.end method


# virtual methods
.method public EncodeVCard()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/wssnps/database/smlContactItem;->ToSmlvCard_t()Lcom/wssnps/base/smlvCard$SmlvCard_t;

    move-result-object v1

    .line 1076
    .local v1, v:Lcom/wssnps/base/smlvCard$SmlvCard_t;
    invoke-static {v1}, Lcom/wssnps/base/smlvCard;->EncodeVCard(Lcom/wssnps/base/smlvCard$SmlvCard_t;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, s:Ljava/lang/String;
    return-object v0
.end method

.method public ToSmlvCard_t()Lcom/wssnps/base/smlvCard$SmlvCard_t;
    .registers 15

    .prologue
    .line 1109
    new-instance v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;

    invoke-direct {v3}, Lcom/wssnps/base/smlvCard$SmlvCard_t;-><init>()V

    .line 1110
    .local v3, smlvcard:Lcom/wssnps/base/smlvCard$SmlvCard_t;
    iget v11, p0, Lcom/wssnps/database/smlContactItem;->_id:I

    iput v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->luid:I

    .line 1111
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    iput-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    .line 1114
    sget-object v11, Lcom/wssnps/base/smlvCard$SmlvCardVersion;->VCARD_V21:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    iput-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->VERSION:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    .line 1116
    new-instance v11, Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    invoke-direct {v11}, Lcom/wssnps/base/smlvCard$SmlvCardName_t;-><init>()V

    iput-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    .line 1117
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    const-string v12, ""

    iput-object v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    .line 1118
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    const-string v12, ""

    iput-object v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    .line 1120
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_43

    .line 1122
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1123
    .local v2, index:I
    const/4 v11, -0x1

    if-ne v2, v11, :cond_132

    .line 1125
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v12, p0, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    iput-object v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    .line 1126
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    const-string v12, ""

    iput-object v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    .line 1135
    .end local v2           #index:I
    :cond_43
    :goto_43
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    if-eqz v11, :cond_105

    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_105

    .line 1137
    const/4 v8, 0x0

    .line 1139
    .local v8, vcardN:Lcom/wssnps/base/smlvCard$SmlvCardName_t;
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->N:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1141
    .local v0, data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_103

    .line 1143
    new-instance v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    .end local v8           #vcardN:Lcom/wssnps/base/smlvCard$SmlvCardName_t;
    invoke-direct {v8}, Lcom/wssnps/base/smlvCard$SmlvCardName_t;-><init>()V

    .line 1145
    .restart local v8       #vcardN:Lcom/wssnps/base/smlvCard$SmlvCardName_t;
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6c

    .line 1146
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    iput-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    .line 1148
    :cond_6c
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_78

    .line 1149
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    iput-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    .line 1151
    :cond_78
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_84

    .line 1152
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    iput-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    .line 1154
    :cond_84
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_90

    .line 1155
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    iput-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->middle:Ljava/lang/String;

    .line 1157
    :cond_90
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9c

    .line 1158
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    iput-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    .line 1160
    :cond_9c
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a8

    .line 1161
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    iput-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticFamily:Ljava/lang/String;

    .line 1163
    :cond_a8
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b4

    .line 1164
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    iput-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticGiven:Ljava/lang/String;

    .line 1166
    :cond_b4
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c0

    .line 1167
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    iput-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticMiddle:Ljava/lang/String;

    .line 1169
    :cond_c0
    iget-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_100

    iget-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_100

    iget-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_100

    iget-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->middle:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_100

    iget-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_100

    iget-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticFamily:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_100

    iget-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticGiven:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_100

    iget-object v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->phoneticMiddle:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_103

    .line 1174
    :cond_100
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->isValid:Z

    .line 1177
    :cond_103
    iput-object v8, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    .line 1181
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v8           #vcardN:Lcom/wssnps/base/smlvCard$SmlvCardName_t;
    :cond_105
    const/4 v6, 0x0

    .line 1183
    .local v6, type:Ljava/lang/Integer;
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    if-eqz v11, :cond_14b

    .line 1185
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10b
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_14b

    .line 1187
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->NoteList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1188
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_12f

    .line 1190
    iget-object v5, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 1192
    .local v5, text:Ljava/lang/String;
    if-eqz v5, :cond_12f

    .line 1194
    new-instance v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v10}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1195
    .local v10, vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1197
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    .end local v5           #text:Ljava/lang/String;
    .end local v10           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_12f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10b

    .line 1130
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    .end local v6           #type:Ljava/lang/Integer;
    .restart local v2       #index:I
    :cond_132
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v12, p0, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    .line 1131
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v12, p0, Lcom/wssnps/database/smlContactItem;->FN:Ljava/lang/String;

    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    goto/16 :goto_43

    .line 1203
    .end local v2           #index:I
    .restart local v6       #type:Ljava/lang/Integer;
    :cond_14b
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    if-eqz v11, :cond_177

    .line 1205
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_150
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_177

    .line 1207
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->NickNameList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1208
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_174

    .line 1210
    iget-object v5, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    .line 1212
    .restart local v5       #text:Ljava/lang/String;
    if-eqz v5, :cond_174

    .line 1214
    new-instance v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v10}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1215
    .restart local v10       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1217
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NICKNAME:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    .end local v5           #text:Ljava/lang/String;
    .end local v10           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_174
    add-int/lit8 v1, v1, 0x1

    goto :goto_150

    .line 1223
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    :cond_177
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    if-eqz v11, :cond_1db

    .line 1225
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_17c
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_1db

    .line 1227
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->telList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1228
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_1d0

    .line 1230
    const/4 v6, 0x0

    .line 1232
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_19f

    .line 1233
    sget-object v11, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/wssnps/database/smlContactItem$TypeHash;->getServerType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1235
    :cond_19f
    if-nez v6, :cond_1ab

    .line 1236
    sget-object v11, Lcom/wssnps/database/smlContactItem;->TYPE_TEL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-virtual {v11}, Lcom/wssnps/database/smlContactItem$TypeHash;->getServerOtherType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1238
    :cond_1ab
    if-eqz v6, :cond_1d0

    .line 1240
    new-instance v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v10}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1241
    .restart local v10       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1242
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1243
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    .line 1245
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    if-eqz v11, :cond_1d3

    .line 1249
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->speedDialList:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    .end local v10           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_1d0
    :goto_1d0
    add-int/lit8 v1, v1, 0x1

    goto :goto_17c

    .line 1251
    .restart local v10       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_1d3
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->speedDialList:Ljava/util/ArrayList;

    const-string v12, "-1"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d0

    .line 1257
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    .end local v10           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_1db
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    if-eqz v11, :cond_22c

    .line 1259
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1e0
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_22c

    .line 1261
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1262
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_229

    .line 1264
    const/4 v6, 0x0

    .line 1266
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_203

    .line 1267
    sget-object v11, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/wssnps/database/smlContactItem$TypeHash;->getServerType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1269
    :cond_203
    if-nez v6, :cond_20f

    .line 1270
    sget-object v11, Lcom/wssnps/database/smlContactItem;->TYPE_EMAIL_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-virtual {v11}, Lcom/wssnps/database/smlContactItem$TypeHash;->getServerOtherType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1272
    :cond_20f
    if-eqz v6, :cond_229

    .line 1274
    new-instance v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v10}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1275
    .restart local v10       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1276
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1277
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    .line 1279
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    .end local v10           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e0

    .line 1285
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    :cond_22c
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    if-eqz v11, :cond_27d

    .line 1287
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_231
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_27d

    .line 1289
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->msnList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1290
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_27a

    .line 1292
    const/4 v6, 0x0

    .line 1294
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_254

    .line 1295
    sget-object v11, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/wssnps/database/smlContactItem$TypeHash;->getServerType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1297
    :cond_254
    if-nez v6, :cond_260

    .line 1298
    sget-object v11, Lcom/wssnps/database/smlContactItem;->TYPE_IM_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-virtual {v11}, Lcom/wssnps/database/smlContactItem$TypeHash;->getServerOtherType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1300
    :cond_260
    if-eqz v6, :cond_27a

    .line 1302
    new-instance v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v10}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1303
    .restart local v10       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1304
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1305
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    .line 1307
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->MSNList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    .end local v10           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_27a
    add-int/lit8 v1, v1, 0x1

    goto :goto_231

    .line 1313
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    :cond_27d
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    if-eqz v11, :cond_285

    .line 1315
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->Sip:Ljava/lang/String;

    iput-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->SipAddress:Ljava/lang/String;

    .line 1318
    :cond_285
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    if-eqz v11, :cond_32d

    .line 1321
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_28a
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_32d

    .line 1323
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1324
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2a5

    .line 1321
    :cond_2a2
    :goto_2a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_28a

    .line 1327
    :cond_2a5
    if-eqz v0, :cond_2a2

    .line 1329
    const/4 v6, 0x0

    .line 1331
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2b8

    .line 1332
    sget-object v11, Lcom/wssnps/database/smlContactItem;->TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/wssnps/database/smlContactItem$TypeHash;->getServerType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1334
    :cond_2b8
    new-instance v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;

    invoke-direct {v7}, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;-><init>()V

    .line 1336
    .local v7, vcardAddr:Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;
    if-nez v6, :cond_2c9

    .line 1337
    sget-object v11, Lcom/wssnps/database/smlContactItem;->TYPE_ADR_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-virtual {v11}, Lcom/wssnps/database/smlContactItem$TypeHash;->getServerOtherType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1339
    :cond_2c9
    if-eqz v6, :cond_2a2

    .line 1341
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->type:I

    .line 1343
    if-eqz v0, :cond_326

    .line 1351
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2df

    .line 1352
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    iput-object v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    .line 1366
    :cond_2df
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2eb

    .line 1367
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    iput-object v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->ExCustomValue:Ljava/lang/String;

    .line 1370
    :cond_2eb
    iget-object v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_323

    iget-object v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_323

    iget-object v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_323

    iget-object v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_323

    iget-object v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_323

    iget-object v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_323

    iget-object v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_326

    .line 1375
    :cond_323
    const/4 v11, 0x1

    iput-boolean v11, v7, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->isValid:Z

    .line 1379
    :cond_326
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a2

    .line 1385
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    .end local v7           #vcardAddr:Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;
    :cond_32d
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    if-eqz v11, :cond_355

    .line 1388
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_332
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_355

    .line 1390
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1391
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_352

    .line 1393
    new-instance v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v10}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1394
    .restart local v10       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1396
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    .end local v10           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_352
    add-int/lit8 v1, v1, 0x1

    goto :goto_332

    .line 1401
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    :cond_355
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    if-eqz v11, :cond_3ec

    .line 1404
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_35a
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_3ec

    .line 1406
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1411
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_3e8

    .line 1413
    const/4 v6, 0x0

    .line 1415
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_37d

    .line 1416
    sget-object v11, Lcom/wssnps/database/smlContactItem;->TYPE_ORG_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/wssnps/database/smlContactItem$TypeHash;->getServerType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1418
    :cond_37d
    new-instance v9, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;

    invoke-direct {v9}, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;-><init>()V

    .line 1420
    .local v9, vcardOrg:Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;
    if-nez v6, :cond_38e

    .line 1421
    sget-object v11, Lcom/wssnps/database/smlContactItem;->TYPE_ORG_SERVER:Lcom/wssnps/database/smlContactItem$TypeHash;

    invoke-virtual {v11}, Lcom/wssnps/database/smlContactItem$TypeHash;->getServerOtherType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1423
    :cond_38e
    if-eqz v6, :cond_3e8

    .line 1425
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v9, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->type:I

    .line 1427
    if-eqz v0, :cond_3e3

    .line 1429
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3a4

    .line 1430
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iput-object v11, v9, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    .line 1432
    :cond_3a4
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3b0

    .line 1433
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    iput-object v11, v9, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit1:Ljava/lang/String;

    .line 1435
    :cond_3b0
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3bc

    .line 1436
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    iput-object v11, v9, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    .line 1438
    :cond_3bc
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3c8

    .line 1439
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    iput-object v11, v9, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->ExCustomValue:Ljava/lang/String;

    .line 1441
    :cond_3c8
    iget-object v11, v9, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3e0

    iget-object v11, v9, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit1:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3e0

    iget-object v11, v9, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3e3

    .line 1443
    :cond_3e0
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;->isValid:Z

    .line 1446
    :cond_3e3
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    .end local v9           #vcardOrg:Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;
    :cond_3e8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_35a

    .line 1452
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    :cond_3ec
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    if-eqz v11, :cond_40d

    .line 1454
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3f1
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_40d

    .line 1456
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1457
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_40a

    .line 1459
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->GroupIDList:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    :cond_40a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f1

    .line 1464
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    :cond_40d
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    if-eqz v11, :cond_43c

    .line 1466
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_412
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_43c

    .line 1468
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventBdayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1469
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_439

    .line 1471
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    if-nez v11, :cond_42c

    .line 1472
    const-string v11, "0"

    iput-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 1473
    :cond_42c
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->BDAY:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iget-object v13, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/wssnps/database/smlContactItem;->String2SMLDate(Ljava/lang/String;Ljava/lang/String;)Lcom/wssnps/base/smlvCard$SMLDate_t;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    :cond_439
    add-int/lit8 v1, v1, 0x1

    goto :goto_412

    .line 1478
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    :cond_43c
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    if-eqz v11, :cond_46b

    .line 1480
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_441
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_46b

    .line 1482
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventAniiverList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1483
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_468

    .line 1485
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    if-nez v11, :cond_45b

    .line 1486
    const-string v11, "0"

    iput-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 1487
    :cond_45b
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ANNIVERSARY:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iget-object v13, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/wssnps/database/smlContactItem;->String2SMLDate(Ljava/lang/String;Ljava/lang/String;)Lcom/wssnps/base/smlvCard$SMLDate_t;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    :cond_468
    add-int/lit8 v1, v1, 0x1

    goto :goto_441

    .line 1492
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    :cond_46b
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    if-eqz v11, :cond_49a

    .line 1494
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_470
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_49a

    .line 1496
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventEtcList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1497
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_497

    .line 1499
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    if-nez v11, :cond_48a

    .line 1500
    const-string v11, "0"

    iput-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 1501
    :cond_48a
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_ETC:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iget-object v13, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/wssnps/database/smlContactItem;->String2SMLDate(Ljava/lang/String;Ljava/lang/String;)Lcom/wssnps/base/smlvCard$SMLDate_t;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    :cond_497
    add-int/lit8 v1, v1, 0x1

    goto :goto_470

    .line 1506
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    :cond_49a
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    if-eqz v11, :cond_4da

    .line 1508
    const/4 v4, 0x0

    .line 1509
    .local v4, smlvcardCustomEvent:Lcom/wssnps/base/smlvCard$SMLDate_t;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4a0
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_4da

    .line 1511
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->EventCustomList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1512
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_4d7

    .line 1514
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    if-nez v11, :cond_4ba

    .line 1515
    const-string v11, "0"

    iput-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    .line 1516
    :cond_4ba
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iget-object v12, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/wssnps/database/smlContactItem;->String2SMLDate(Ljava/lang/String;Ljava/lang/String;)Lcom/wssnps/base/smlvCard$SMLDate_t;

    move-result-object v4

    .line 1517
    const/high16 v11, 0x80

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1518
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v4, Lcom/wssnps/base/smlvCard$SMLDate_t;->type:I

    .line 1519
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    iput-object v11, v4, Lcom/wssnps/base/smlvCard$SMLDate_t;->ExCustomValue:Ljava/lang/String;

    .line 1520
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_CUSTOM:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    :cond_4d7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a0

    .line 1525
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    .end local v4           #smlvcardCustomEvent:Lcom/wssnps/base/smlvCard$SMLDate_t;
    :cond_4da
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    if-eqz v11, :cond_512

    .line 1527
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4df
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_512

    .line 1529
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->relationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$ContactData;

    .line 1530
    .restart local v0       #data:Lcom/wssnps/database/smlContactItem$ContactData;
    if-eqz v0, :cond_50f

    .line 1532
    new-instance v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    invoke-direct {v10}, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 1533
    .restart local v10       #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->type:I

    .line 1534
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 1535
    iget-object v11, v0, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    iput-object v11, v10, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->ExCustomValue:Ljava/lang/String;

    .line 1536
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->RELATIONList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    .end local v10           #vcardev:Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;
    :cond_50f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4df

    .line 1541
    .end local v0           #data:Lcom/wssnps/database/smlContactItem$ContactData;
    .end local v1           #i:I
    :cond_512
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    if-eqz v11, :cond_530

    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v11, v11, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    if-eqz v11, :cond_530

    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v11, v11, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_530

    .line 1543
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iput-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    .line 1544
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/wssnps/database/smlContactItem;->Dirty:Ljava/lang/String;

    .line 1545
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    .line 1548
    :cond_530
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    if-eqz v11, :cond_548

    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v11, v11, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    if-eqz v11, :cond_548

    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v11, v11, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_548

    .line 1550
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->contactAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iput-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Contact_Account:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    .line 1553
    :cond_548
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_568

    .line 1555
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    iget-object v12, p0, Lcom/wssnps/database/smlContactItem;->GroupName:Ljava/lang/String;

    iput-object v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->GroupName:Ljava/lang/String;

    .line 1557
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->sGroupDN:Ljava/lang/String;

    if-eqz v11, :cond_583

    .line 1559
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    const/4 v12, 0x1

    iput v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->type:I

    .line 1568
    :goto_55f
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    iget-object v12, p0, Lcom/wssnps/database/smlContactItem;->sGroupDN:Ljava/lang/String;

    iput-object v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->sGroupDisplayName:Ljava/lang/String;

    .line 1569
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/wssnps/database/smlContactItem;->Dirty:Ljava/lang/String;

    .line 1573
    :cond_568
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->Dirty:Ljava/lang/String;

    if-eqz v11, :cond_578

    .line 1575
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->Dirty:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->dirty:I

    .line 1578
    :cond_578
    iget-object v11, p0, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    if-eqz v11, :cond_582

    .line 1580
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    iget-object v12, p0, Lcom/wssnps/database/smlContactItem;->photo:Ljava/lang/String;

    iput-object v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    .line 1583
    :cond_582
    return-object v3

    .line 1562
    :cond_583
    iget-object v11, v3, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    const/4 v12, 0x0

    iput v12, v11, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;->type:I

    goto :goto_55f
.end method

.method public insertDataCV(Landroid/content/ContentResolver;)Landroid/content/ContentValues;
    .registers 5
    .parameter

    .prologue
    .line 3757
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3758
    iget-object v1, p0, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v1, v1, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 3760
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3761
    const-string v1, "account_type"

    iget-object v2, p0, Lcom/wssnps/database/smlContactItem;->xAccount:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;->account_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3764
    :cond_21
    iget v1, p0, Lcom/wssnps/database/smlContactItem;->_id:I

    if-eqz v1, :cond_30

    .line 3765
    const-string v1, "_id"

    iget v2, p0, Lcom/wssnps/database/smlContactItem;->_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3767
    :cond_30
    return-object v0
.end method

.method public insertDataCV(Lcom/wssnps/database/smlContactItem$ContactData;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3837
    if-nez p1, :cond_4

    .line 3927
    :goto_3
    return-object v1

    .line 3840
    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3842
    const-string v2, "raw_contact_id"

    iget v3, p0, Lcom/wssnps/database/smlContactItem;->_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3843
    const-string v2, "vnd.android.cursor.item/nickname"

    if-ne p2, v2, :cond_28

    .line 3845
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    const-string v1, "data1"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    move-object v1, v0

    .line 3927
    goto :goto_3

    .line 3848
    :cond_28
    const-string v2, "vnd.android.cursor.item/note"

    if-ne p2, v2, :cond_3b

    .line 3851
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3852
    const-string v1, "data1"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 3854
    :cond_3b
    const-string v2, "vnd.android.cursor.item/name"

    if-ne p2, v2, :cond_7f

    .line 3856
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3858
    const-string v1, "data2"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3859
    const-string v1, "data3"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    const-string v1, "data4"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3861
    const-string v1, "data5"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    const-string v1, "data6"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3863
    const-string v1, "data7"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3864
    const-string v1, "data9"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3865
    const-string v1, "data8"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 3867
    :cond_7f
    const-string v2, "vnd.android.cursor.item/phone_v2"

    if-ne p2, v2, :cond_a7

    .line 3869
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3870
    const-string v1, "data1"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3871
    const-string v1, "data2"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3872
    const-string v1, "data15"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    const-string v1, "data3"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 3875
    :cond_a7
    const-string v2, "vnd.android.cursor.item/email_v2"

    if-ne p2, v2, :cond_c9

    .line 3877
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3878
    const-string v1, "data1"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3879
    const-string v1, "data2"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3880
    const-string v1, "data3"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 3882
    :cond_c9
    const-string v2, "vnd.android.cursor.item/im"

    if-ne p2, v2, :cond_f2

    .line 3884
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    const-string v1, "data1"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3886
    const-string v1, "data2"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3887
    const-string v1, "data5"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3888
    const-string v1, "data6"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 3890
    :cond_f2
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    if-ne p2, v2, :cond_13e

    .line 3892
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    const-string v1, "data2"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3895
    const-string v1, "data4"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3896
    const-string v1, "data5"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3897
    const-string v1, "data6"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    const-string v1, "data7"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3899
    const-string v1, "data8"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    const-string v1, "data9"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3901
    const-string v1, "data10"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data10:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    const-string v1, "data3"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 3904
    :cond_13e
    const-string v2, "vnd.android.cursor.item/organization"

    if-ne p2, v2, :cond_160

    .line 3906
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3907
    const-string v1, "data1"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3908
    const-string v1, "data2"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    const-string v1, "data4"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 3911
    :cond_160
    const-string v2, "vnd.android.cursor.item/website"

    if-ne p2, v2, :cond_174

    .line 3913
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3914
    const-string v1, "data1"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 3916
    :cond_174
    const-string v2, "vnd.android.cursor.item/group_membership"

    if-ne p2, v2, :cond_188

    .line 3918
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3919
    const-string v1, "data1"

    iget-object v2, p1, Lcom/wssnps/database/smlContactItem$ContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 3924
    :cond_188
    const/4 v0, 0x1

    const-string v2, "minetype not match"

    invoke-static {v0, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_26
.end method

.method public insertDataCV(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3772
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3773
    const-string v1, "raw_contact_id"

    iget v2, p0, Lcom/wssnps/database/smlContactItem;->_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3775
    const-string v1, "vnd.android.cursor.item/note"

    if-ne p2, v1, :cond_21

    .line 3777
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3778
    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3814
    :goto_20
    return-object v0

    .line 3780
    :cond_21
    const-string v1, "vnd.android.cursor.item/nickname"

    if-ne p2, v1, :cond_32

    .line 3782
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3783
    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 3785
    :cond_32
    const-string v1, "vnd.android.cursor.item/photo"

    if-ne p2, v1, :cond_4b

    .line 3787
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3789
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/wssnps/base/smlBase64;->decode([B)[B

    move-result-object v1

    .line 3796
    const-string v2, "data15"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_20

    .line 3798
    :cond_4b
    const-string v1, "vnd.android.cursor.item/group_membership"

    if-ne p2, v1, :cond_57

    .line 3800
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 3802
    :cond_57
    const-string v1, "vnd.android.cursor.item/contact_event"

    if-ne p2, v1, :cond_72

    .line 3804
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3805
    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_20

    .line 3810
    :cond_72
    const/4 v0, 0x0

    .line 3811
    const/4 v1, 0x1

    const-string v2, "minetype not match"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_20
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/wssnps/database/smlContactItem;->EncodeVCard()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
