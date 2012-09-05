.class Lcom/android/email/service/DoExternalRequest$1;
.super Ljava/lang/Thread;
.source "DoExternalRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/DoExternalRequest;->removeAccounts(Landroid/content/Context;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/DoExternalRequest;


# direct methods
.method constructor <init>(Lcom/android/email/service/DoExternalRequest;)V
    .registers 2
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/email/service/DoExternalRequest$1;->this$0:Lcom/android/email/service/DoExternalRequest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 549
    sget-object v0, Lcom/android/email/service/DoExternalRequest;->mcontext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/service/MailService;->reconcilePopImapAccountsSync(Landroid/content/Context;)V

    .line 550
    return-void
.end method
