.class Lcom/infraware/filemanager/file/FileBaseActivity$14;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;->updateScreen()V
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
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$14;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 1501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$14;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #calls: Lcom/infraware/filemanager/file/FileBaseActivity;->updateSelect()V
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$13(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    .line 1505
    return-void
.end method
