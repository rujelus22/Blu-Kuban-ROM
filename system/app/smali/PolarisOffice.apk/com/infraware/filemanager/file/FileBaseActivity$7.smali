.class Lcom/infraware/filemanager/file/FileBaseActivity$7;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileBaseActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$7;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$7;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->initState()V

    .line 450
    return-void
.end method