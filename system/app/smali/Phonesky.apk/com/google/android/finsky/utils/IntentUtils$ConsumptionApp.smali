.class abstract Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/IntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ConsumptionApp"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/utils/IntentUtils$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>()V

    return-void
.end method

.method protected static final addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "intent"
    .parameter "key"
    .parameter "accountName"

    .prologue
    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :cond_9
    return-void
.end method

.method protected static final setDefaultFlags(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 89
    const/high16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    return-void
.end method


# virtual methods
.method public buildManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public abstract buildViewCollectionIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
.end method
