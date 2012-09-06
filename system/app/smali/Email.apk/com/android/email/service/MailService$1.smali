.class Lcom/android/email/service/MailService$1;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/email/service/MailService$1;->this$0:Lcom/android/email/service/MailService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/service/MailService$1;->this$0:Lcom/android/email/service/MailService;

    invoke-static {v0}, Lcom/android/email/service/MailService;->reconcilePopImapAccountsSync(Landroid/content/Context;)V

    .line 145
    return-void
.end method
