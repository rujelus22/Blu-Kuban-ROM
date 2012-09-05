.class Lcom/swype/android/settings/ManageUdbActivity$4;
.super Ljava/lang/Object;
.source "ManageUdbActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/ManageUdbActivity;->onFoundUserWords([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/ManageUdbActivity;

.field final synthetic val$words:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/ManageUdbActivity;[Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/swype/android/settings/ManageUdbActivity$4;->this$0:Lcom/swype/android/settings/ManageUdbActivity;

    iput-object p2, p0, Lcom/swype/android/settings/ManageUdbActivity$4;->val$words:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$4;->this$0:Lcom/swype/android/settings/ManageUdbActivity;

    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$4;->val$words:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/swype/android/settings/ManageUdbActivity;->handleFoundUserWords([Ljava/lang/String;)V

    .line 247
    return-void
.end method
