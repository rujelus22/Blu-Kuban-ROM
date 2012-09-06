.class Lcom/android/email/Controller$14;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->deleteAccount(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$14;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/Controller$14;->val$accountId:J

    iget-object v3, p0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteAccountSync(JLandroid/content/Context;)V

    .line 1138
    return-void
.end method
