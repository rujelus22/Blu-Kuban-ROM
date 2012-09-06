.class Lcom/google/android/apps/reader/widget/ItemViewFactory$SettingsProxy;
.super Ljava/lang/Object;
.source "ItemViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsProxy"
.end annotation


# instance fields
.field private final mWebSettings:Landroid/webkit/WebSettings;


# direct methods
.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .registers 2
    .parameter "webSettings"

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ItemViewFactory$SettingsProxy;->mWebSettings:Landroid/webkit/WebSettings;

    .line 179
    return-void
.end method


# virtual methods
.method public getPluginsEnabled()Z
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFactory$SettingsProxy;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getPluginsEnabled()Z

    move-result v0

    return v0
.end method
