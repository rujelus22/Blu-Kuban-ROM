.class Lcom/android/email/activity/Welcome$1;
.super Ljava/lang/Object;
.source "Welcome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/Welcome;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/Welcome;


# direct methods
.method constructor <init>(Lcom/android/email/activity/Welcome;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    invoke-static {v0}, Lcom/android/email/service/MailService;->reconcilePopImapAccountsSync(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    #calls: Lcom/android/email/activity/Welcome;->resolveAccount()V
    invoke-static {v0}, Lcom/android/email/activity/Welcome;->access$000(Lcom/android/email/activity/Welcome;)V

    .line 203
    return-void
.end method
