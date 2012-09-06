.class Lcom/google/android/apps/plus/content/AdsProvider$1;
.super Ljava/lang/Object;
.source "AdsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/content/AdsProvider;->getAdCursor(Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/content/AdsProvider;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$esAccount:Lcom/google/android/apps/plus/content/EsAccount;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/content/AdsProvider;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/apps/plus/content/AdsProvider$1;->this$0:Lcom/google/android/apps/plus/content/AdsProvider;

    iput-object p2, p0, Lcom/google/android/apps/plus/content/AdsProvider$1;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/content/AdsProvider$1;->val$esAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AdsProvider$1;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/content/AdsProvider$1;->val$esAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ADS_READ_PLUSONES:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 184
    return-void
.end method
