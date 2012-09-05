.class public Lcom/sprint/dsa/data/PageContent;
.super Ljava/lang/Object;
.source "PageContent.java"


# static fields
.field public static final DB_COL_ACTION:Ljava/lang/String; = "action"

.field public static final DB_COL_APP_SCHEME:Ljava/lang/String; = "app_scheme"

.field public static final DB_COL_CAMPAIGN:Ljava/lang/String; = "campaign"

.field public static final DB_COL_COST:Ljava/lang/String; = "cost"

.field public static final DB_COL_DESC:Ljava/lang/String; = "desc"

.field public static final DB_COL_ENABLED:Ljava/lang/String; = "enabled"

.field public static final DB_COL_EXPANDED:Ljava/lang/String; = "expanded"

.field public static final DB_COL_EXPIRATION:Ljava/lang/String; = "expiration"

.field public static final DB_COL_EXTRA:Ljava/lang/String; = "extra"

.field public static final DB_COL_ICON:Ljava/lang/String; = "icon"

.field public static final DB_COL_ID:Ljava/lang/String; = "id"

.field public static final DB_COL_IMGURL:Ljava/lang/String; = "imgurl"

.field public static final DB_COL_RATING:Ljava/lang/String; = "rating"

.field public static final DB_COL_SID:Ljava/lang/String; = "sid"

.field public static final DB_COL_STATUS:Ljava/lang/String; = "status"

.field public static final DB_COL_TITLE:Ljava/lang/String; = "title"

.field public static final DB_COL_UID:Ljava/lang/String; = "uid"

.field public static final DB_COL_URI:Ljava/lang/String; = "uri"

.field public static final DB_COL_VISIBLE:Ljava/lang/String; = "visible"

.field static final DB_TABLE_CATEGORIES:Ljava/lang/String; = "categories_tbl"

.field public static final DB_TABLE_FEATURES:Ljava/lang/String; = "features_tbl"

.field private static MAX_PROMO_IN_LIST:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivatePhone:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/data/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomerCare:Z

.field private mTestConnection:Z

.field private mVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "SprintZone_PageContent"

    sput-object v0, Lcom/sprint/dsa/data/PageContent;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x4

    sput v0, Lcom/sprint/dsa/data/PageContent;->MAX_PROMO_IN_LIST:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "version"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/dsa/data/PageContent;->mVer:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    .line 30
    iput-boolean v1, p0, Lcom/sprint/dsa/data/PageContent;->mTestConnection:Z

    .line 31
    iput-boolean v1, p0, Lcom/sprint/dsa/data/PageContent;->mActivatePhone:Z

    .line 32
    iput-boolean v1, p0, Lcom/sprint/dsa/data/PageContent;->mCustomerCare:Z

    .line 59
    iput-object p1, p0, Lcom/sprint/dsa/data/PageContent;->mVer:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public activatePhone()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sprint/dsa/data/PageContent;->mActivatePhone:Z

    return v0
.end method

.method public addCategory(Lcom/sprint/dsa/data/CategoryItem;)V
    .registers 3
    .parameter "category"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public addFeature(Lcom/sprint/dsa/data/FeatureItem;)V
    .registers 10
    .parameter "promo"

    .prologue
    const/4 v7, 0x1

    .line 153
    iget-object v2, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    .line 164
    return-void

    .line 153
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/CategoryItem;

    .line 154
    .local v1, group:Lcom/sprint/dsa/data/CategoryItem;
    iget-wide v3, v1, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    iget-wide v5, p1, Lcom/sprint/dsa/data/FeatureItem;->mSid:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 155
    iget-object v3, v1, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p1}, Lcom/sprint/dsa/data/FeatureItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, action:Ljava/lang/String;
    const-string v3, "connection"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 158
    iput-boolean v7, p0, Lcom/sprint/dsa/data/PageContent;->mTestConnection:Z

    goto :goto_7

    .line 159
    :cond_30
    const-string v3, "customer_care"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 160
    iput-boolean v7, p0, Lcom/sprint/dsa/data/PageContent;->mCustomerCare:Z

    goto :goto_7
.end method

.method public appendFeature(Lcom/sprint/dsa/data/FeatureItem;)V
    .registers 5
    .parameter "promo"

    .prologue
    .line 122
    iget-object v1, p1, Lcom/sprint/dsa/data/FeatureItem;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 150
    :cond_4
    :goto_4
    return-void

    .line 127
    :cond_5
    const/4 v0, 0x0

    .line 128
    .local v0, group:Lcom/sprint/dsa/data/CategoryItem;
    iget-object v1, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 129
    iget-object v1, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #group:Lcom/sprint/dsa/data/CategoryItem;
    check-cast v0, Lcom/sprint/dsa/data/CategoryItem;

    .line 132
    .restart local v0       #group:Lcom/sprint/dsa/data/CategoryItem;
    :cond_1e
    if-eqz v0, :cond_4

    .line 133
    iget-object v1, v0, Lcom/sprint/dsa/data/CategoryItem;->mAppScheme:Ljava/lang/String;

    iput-object v1, p1, Lcom/sprint/dsa/data/FeatureItem;->mScheme:Ljava/lang/String;

    .line 134
    iget-wide v1, v0, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    iput-wide v1, p1, Lcom/sprint/dsa/data/FeatureItem;->mSid:J

    .line 149
    iget-object v1, v0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    return-void
.end method

.method public copyContent()Lcom/sprint/dsa/data/PageContent;
    .registers 6

    .prologue
    .line 63
    new-instance v1, Lcom/sprint/dsa/data/PageContent;

    iget-object v2, p0, Lcom/sprint/dsa/data/PageContent;->mVer:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sprint/dsa/data/PageContent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, newContent:Lcom/sprint/dsa/data/PageContent;
    iget-boolean v2, p0, Lcom/sprint/dsa/data/PageContent;->mTestConnection:Z

    iput-boolean v2, v1, Lcom/sprint/dsa/data/PageContent;->mTestConnection:Z

    .line 65
    iget-boolean v2, p0, Lcom/sprint/dsa/data/PageContent;->mActivatePhone:Z

    iput-boolean v2, v1, Lcom/sprint/dsa/data/PageContent;->mActivatePhone:Z

    .line 66
    iget-boolean v2, p0, Lcom/sprint/dsa/data/PageContent;->mCustomerCare:Z

    iput-boolean v2, v1, Lcom/sprint/dsa/data/PageContent;->mCustomerCare:Z

    .line 68
    iget-object v2, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_23

    .line 75
    invoke-virtual {v1}, Lcom/sprint/dsa/data/PageContent;->removeHiddenItems()V

    .line 76
    return-object v1

    .line 68
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/CategoryItem;

    .line 70
    .local v0, item:Lcom/sprint/dsa/data/CategoryItem;
    :try_start_29
    iget-object v3, v1, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/CategoryItem;->clone()Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_29 .. :try_end_32} :catch_33

    goto :goto_19

    .line 71
    :catch_33
    move-exception v3

    goto :goto_19
.end method

.method public filter(Lcom/sprint/dsa/SzSettings;Landroid/content/Context;)V
    .registers 10
    .parameter "settings"
    .parameter "context"

    .prologue
    .line 372
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 373
    .local v3, manager:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 374
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sprint/dsa/data/CategoryItem;>;"
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11

    .line 393
    return-void

    .line 375
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/CategoryItem;

    .line 376
    .local v1, group:Lcom/sprint/dsa/data/CategoryItem;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/CategoryItem;->getSid()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/sprint/dsa/SzSettings;->isShow(J)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 377
    iget-object v4, v1, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/FeatureItem;

    .line 378
    .local v0, feature:Lcom/sprint/dsa/data/FeatureItem;
    iget-object v5, v0, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    const-string v6, "app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 381
    :try_start_3d
    iget-object v5, v0, Lcom/sprint/dsa/data/FeatureItem;->mUri:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 382
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/sprint/dsa/data/FeatureItem;->mInstalled:Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_47

    goto :goto_27

    .line 383
    :catch_47
    move-exception v5

    goto :goto_27

    .line 389
    .end local v0           #feature:Lcom/sprint/dsa/data/FeatureItem;
    :cond_49
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_a
.end method

.method public getAllGroups()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/data/CategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCategory(I)Lcom/sprint/dsa/data/CategoryItem;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/CategoryItem;

    return-object v0
.end method

.method public getCategory(Ljava/lang/String;)Lcom/sprint/dsa/data/CategoryItem;
    .registers 8
    .parameter "groupId"

    .prologue
    .line 221
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 222
    .local v1, id:J
    iget-object v3, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_16

    .line 226
    const/4 v0, 0x0

    :goto_15
    return-object v0

    .line 222
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/CategoryItem;

    .line 223
    .local v0, group:Lcom/sprint/dsa/data/CategoryItem;
    iget-wide v4, v0, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    cmp-long v4, v4, v1

    if-nez v4, :cond_e

    goto :goto_15
.end method

.method public getChildCount(I)I
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/CategoryItem;

    .line 209
    .local v0, group:Lcom/sprint/dsa/data/CategoryItem;
    if-nez v0, :cond_c

    .line 211
    const/4 v1, 0x0

    .line 213
    :goto_b
    return v1

    :cond_c
    iget-object v1, v0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_b
.end method

.method public getFeatureItem(II)Lcom/sprint/dsa/data/FeatureItem;
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/CategoryItem;

    .line 184
    .local v0, group:Lcom/sprint/dsa/data/CategoryItem;
    if-nez v0, :cond_c

    .line 186
    const/4 v1, 0x0

    .line 188
    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/FeatureItem;

    goto :goto_b
.end method

.method public getFeatureItem(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/data/FeatureItem;
    .registers 8
    .parameter "action"
    .parameter "uri"

    .prologue
    .line 192
    iget-object v2, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    .line 204
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 192
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/CategoryItem;

    .line 193
    .local v1, group:Lcom/sprint/dsa/data/CategoryItem;
    iget-object v3, v1, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/FeatureItem;

    .line 195
    .local v0, feature:Lcom/sprint/dsa/data/FeatureItem;
    :try_start_26
    iget-object v4, v0, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/sprint/dsa/data/FeatureItem;->mUri:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_37

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_d

    .line 198
    :catch_37
    move-exception v4

    goto :goto_1a
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sprint/dsa/data/PageContent;->mVer:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomerCare()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sprint/dsa/data/PageContent;->mCustomerCare:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public loadFromDb(Lcom/sprint/dsa/data/DbAdapter;)Z
    .registers 3
    .parameter "dbHelper"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, ret:Z
    return v0
.end method

.method public removeCategory(Ljava/lang/String;)Lcom/sprint/dsa/data/CategoryItem;
    .registers 4
    .parameter "groupId"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/data/PageContent;->getCategory(Ljava/lang/String;)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v0

    .line 231
    .local v0, category:Lcom/sprint/dsa/data/CategoryItem;
    if-eqz v0, :cond_b

    .line 232
    iget-object v1, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    :cond_b
    return-object v0
.end method

.method public removeCategory(Lcom/sprint/dsa/data/CategoryItem;)Z
    .registers 3
    .parameter "category"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeHiddenItems()V
    .registers 6

    .prologue
    .line 421
    iget-object v3, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_d

    .line 430
    return-void

    .line 421
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/CategoryItem;

    .line 422
    .local v0, group:Lcom/sprint/dsa/data/CategoryItem;
    iget-object v4, v0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 423
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sprint/dsa/data/FeatureItem;>;"
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 424
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/dsa/data/FeatureItem;

    .line 425
    .local v2, item:Lcom/sprint/dsa/data/FeatureItem;
    invoke-virtual {v2}, Lcom/sprint/dsa/data/FeatureItem;->isVisible()Z

    move-result v4

    if-nez v4, :cond_19

    .line 426
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_19
.end method

.method public saveToDb(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    .registers 20
    .parameter "dbHelper"
    .parameter "scheme"

    .prologue
    .line 254
    if-nez p1, :cond_3

    .line 356
    :goto_2
    return-void

    .line 260
    :cond_3
    invoke-virtual/range {p1 .. p2}, Lcom/sprint/dsa/data/DbAdapter;->cleanPageContent(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/sprint/dsa/data/Device;->getInstance()Lcom/sprint/dsa/data/Device;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sprint/dsa/data/Device;->hasVoice()Z

    move-result v12

    if-nez v12, :cond_2a

    .line 264
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v10, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/CategoryItem;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1d
    :goto_1d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6e

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 278
    .end local v10           #toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/CategoryItem;>;"
    :cond_2a
    invoke-static {}, Lcom/sprint/dsa/data/Device;->getInstance()Lcom/sprint/dsa/data/Device;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sprint/dsa/data/Device;->noActivation()Z

    move-result v12

    if-eqz v12, :cond_42

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_84

    .line 293
    :cond_42
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_b9

    .line 351
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v6, newVersion:Landroid/content/ContentValues;
    const-string v12, "promo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c0

    const-string v2, "promo_ver"

    .line 354
    .local v2, col:Ljava/lang/String;
    :goto_61
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sprint/dsa/data/PageContent;->mVer:Ljava/lang/String;

    invoke-virtual {v6, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sprint/dsa/data/DbAdapter;->updateVersions(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 265
    .end local v2           #col:Ljava/lang/String;
    .end local v6           #newVersion:Landroid/content/ContentValues;
    .restart local v10       #toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/CategoryItem;>;"
    :cond_6e
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/CategoryItem;

    .line 266
    .local v1, category:Lcom/sprint/dsa/data/CategoryItem;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/CategoryItem;->getTitle()Ljava/lang/String;

    move-result-object v13

    const-string v14, "contact sprint"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 269
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 279
    .end local v1           #category:Lcom/sprint/dsa/data/CategoryItem;
    .end local v10           #toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/CategoryItem;>;"
    :cond_84
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/CategoryItem;

    .line 280
    .restart local v1       #category:Lcom/sprint/dsa/data/CategoryItem;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v11, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/FeatureItem;>;"
    iget-object v13, v1, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_95
    :goto_95
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_a1

    .line 287
    iget-object v13, v1, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_3c

    .line 281
    :cond_a1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/dsa/data/FeatureItem;

    .line 282
    .local v3, feature:Lcom/sprint/dsa/data/FeatureItem;
    iget-object v14, v3, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    if-eqz v14, :cond_95

    iget-object v14, v3, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    const-string v15, "activate"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_95

    .line 283
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 293
    .end local v1           #category:Lcom/sprint/dsa/data/CategoryItem;
    .end local v3           #feature:Lcom/sprint/dsa/data/FeatureItem;
    .end local v11           #toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/FeatureItem;>;"
    :cond_b9
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/CategoryItem;

    .line 294
    .restart local v1       #category:Lcom/sprint/dsa/data/CategoryItem;
    iget-object v13, v1, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_4a

    .line 298
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v4, gv:Landroid/content/ContentValues;
    const-string v13, "sid"

    iget-wide v14, v1, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    const-string v13, "title"

    iget-object v14, v1, Lcom/sprint/dsa/data/CategoryItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v13, "app_scheme"

    move-object/from16 v0, p2

    invoke-virtual {v4, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v13, "expanded"

    iget-boolean v14, v1, Lcom/sprint/dsa/data/CategoryItem;->mExpanded:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 303
    const-string v13, "pack_id"

    iget-object v14, v1, Lcom/sprint/dsa/data/CategoryItem;->mPackId:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sprint/dsa/data/DbAdapter;->insertCategoryItem(Landroid/content/ContentValues;)V

    .line 307
    invoke-static {}, Lcom/sprint/dsa/data/Device;->getInstance()Lcom/sprint/dsa/data/Device;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sprint/dsa/data/Device;->hasVoice()Z

    move-result v5

    .line 308
    .local v5, hasVoice:Z
    invoke-static {}, Lcom/sprint/dsa/data/Device;->getInstance()Lcom/sprint/dsa/data/Device;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sprint/dsa/data/Device;->noActivation()Z

    move-result v7

    .line 310
    .local v7, noActivation:Z
    iget-object v13, v1, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_112
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/dsa/data/FeatureItem;

    .line 325
    .restart local v3       #feature:Lcom/sprint/dsa/data/FeatureItem;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v9, pv:Landroid/content/ContentValues;
    const-string v14, "app_scheme"

    move-object/from16 v0, p2

    invoke-virtual {v9, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v14, "sid"

    iget-wide v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mSid:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    const-string v14, "campaign"

    iget-object v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mCampaign:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v14, "title"

    iget-object v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v14, "desc"

    iget-object v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v14, "expiration"

    iget-wide v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mExpiration:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 333
    const-string v14, "cost"

    iget-object v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mCost:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v14, "rating"

    iget-wide v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mRating:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    const-string v14, "action"

    iget-object v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v14, "uri"

    iget-object v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mUri:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v14, "extra"

    iget-object v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mExtra:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v14, "imgurl"

    iget-object v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v14, "enabled"

    iget-boolean v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mEnabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 340
    const-string v14, "visible"

    iget-boolean v15, v3, Lcom/sprint/dsa/data/FeatureItem;->mVisible:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 341
    iget-object v14, v3, Lcom/sprint/dsa/data/FeatureItem;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_1b6

    .line 342
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 343
    .local v8, out:Ljava/io/ByteArrayOutputStream;
    iget-object v14, v3, Lcom/sprint/dsa/data/FeatureItem;->mIcon:Landroid/graphics/Bitmap;

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 344
    const-string v14, "icon"

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 346
    .end local v8           #out:Ljava/io/ByteArrayOutputStream;
    :cond_1b6
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/sprint/dsa/data/DbAdapter;->insertFeatureItem(Landroid/content/ContentValues;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/sprint/dsa/data/FeatureItem;->mId:J

    goto/16 :goto_112

    .line 353
    .end local v1           #category:Lcom/sprint/dsa/data/CategoryItem;
    .end local v3           #feature:Lcom/sprint/dsa/data/FeatureItem;
    .end local v4           #gv:Landroid/content/ContentValues;
    .end local v5           #hasVoice:Z
    .end local v7           #noActivation:Z
    .end local v9           #pv:Landroid/content/ContentValues;
    .restart local v6       #newVersion:Landroid/content/ContentValues;
    :cond_1c0
    const-string v2, "pages_ver"

    goto/16 :goto_61
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "version"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sprint/dsa/data/PageContent;->mVer:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public shorten()V
    .registers 8

    .prologue
    .line 400
    iget-object v4, p0, Lcom/sprint/dsa/data/PageContent;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_d

    .line 418
    return-void

    .line 400
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/CategoryItem;

    .line 401
    .local v0, group:Lcom/sprint/dsa/data/CategoryItem;
    iget-object v5, v0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 402
    .local v1, groupSize:I
    iget-object v5, v0, Lcom/sprint/dsa/data/CategoryItem;->mAppScheme:Ljava/lang/String;

    const-string v6, "promo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Lcom/sprint/dsa/data/PageContent;->MAX_PROMO_IN_LIST:I

    if-le v1, v5, :cond_6

    .line 404
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_29
    sget v5, Lcom/sprint/dsa/data/PageContent;->MAX_PROMO_IN_LIST:I

    if-ge v2, v5, :cond_4f

    .line 408
    new-instance v3, Lcom/sprint/dsa/data/FeatureItem;

    invoke-direct {v3}, Lcom/sprint/dsa/data/FeatureItem;-><init>()V

    .line 409
    .local v3, newFeature:Lcom/sprint/dsa/data/FeatureItem;
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/sprint/dsa/data/FeatureItem;->mMore:Z

    .line 410
    const-string v5, "more"

    iput-object v5, v3, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    .line 411
    iget-wide v5, v0, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sprint/dsa/data/FeatureItem;->mUri:Ljava/lang/String;

    .line 412
    iget-object v5, v0, Lcom/sprint/dsa/data/CategoryItem;->mTitle:Ljava/lang/String;

    iput-object v5, v3, Lcom/sprint/dsa/data/FeatureItem;->mExtra:Ljava/lang/String;

    .line 413
    const-string v5, "More..."

    iput-object v5, v3, Lcom/sprint/dsa/data/FeatureItem;->mTitle:Ljava/lang/String;

    .line 415
    iget-object v5, v0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 405
    .end local v3           #newFeature:Lcom/sprint/dsa/data/FeatureItem;
    :cond_4f
    iget-object v5, v0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    add-int/lit8 v2, v2, -0x1

    goto :goto_29
.end method

.method public testConnection()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sprint/dsa/data/PageContent;->mTestConnection:Z

    return v0
.end method
