.class Lcom/swype/android/settings/ManageUdbActivity$6;
.super Ljava/lang/Object;
.source "ManageUdbActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/ManageUdbActivity;->onUserWordDeleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/ManageUdbActivity;

.field final synthetic val$word:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/ManageUdbActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/swype/android/settings/ManageUdbActivity$6;->this$0:Lcom/swype/android/settings/ManageUdbActivity;

    iput-object p2, p0, Lcom/swype/android/settings/ManageUdbActivity$6;->val$word:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$6;->this$0:Lcom/swype/android/settings/ManageUdbActivity;

    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$6;->val$word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/swype/android/settings/ManageUdbActivity;->handleUserWordDeleted(Ljava/lang/String;)V

    .line 267
    return-void
.end method
