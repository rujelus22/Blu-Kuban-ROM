.class final Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$2;
.super Ljava/lang/Object;
.source "CheckMessageSentOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->recordSystemEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$event:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$2;->val$event:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$2;->val$event:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 115
    return-void
.end method
