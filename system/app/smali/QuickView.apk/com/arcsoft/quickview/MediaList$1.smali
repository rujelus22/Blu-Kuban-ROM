.class Lcom/arcsoft/quickview/MediaList$1;
.super Landroid/os/AsyncTask;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/MediaList;->create(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/MediaList;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/MediaList;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/arcsoft/quickview/MediaList$1;->this$0:Lcom/arcsoft/quickview/MediaList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 3
    .parameter "params"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList$1;->this$0:Lcom/arcsoft/quickview/MediaList;

    #calls: Lcom/arcsoft/quickview/MediaList;->buildList()Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/arcsoft/quickview/MediaList;->access$000(Lcom/arcsoft/quickview/MediaList;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/arcsoft/quickview/MediaList$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 131
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList$1;->this$0:Lcom/arcsoft/quickview/MediaList;

    #getter for: Lcom/arcsoft/quickview/MediaList;->mListener:Lcom/arcsoft/quickview/MediaList$OnMediaListListener;
    invoke-static {v0}, Lcom/arcsoft/quickview/MediaList;->access$100(Lcom/arcsoft/quickview/MediaList;)Lcom/arcsoft/quickview/MediaList$OnMediaListListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/arcsoft/quickview/MediaList$OnMediaListListener;->onNotify(I)V

    .line 133
    invoke-static {}, Lcom/arcsoft/quickview/MediaList;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Build media list canceled"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 123
    .local v0, notifyCode:I
    :goto_a
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList$1;->this$0:Lcom/arcsoft/quickview/MediaList;

    #getter for: Lcom/arcsoft/quickview/MediaList;->mListener:Lcom/arcsoft/quickview/MediaList$OnMediaListListener;
    invoke-static {v1}, Lcom/arcsoft/quickview/MediaList;->access$100(Lcom/arcsoft/quickview/MediaList;)Lcom/arcsoft/quickview/MediaList$OnMediaListListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arcsoft/quickview/MediaList$OnMediaListListener;->onNotify(I)V

    .line 125
    invoke-static {}, Lcom/arcsoft/quickview/MediaList;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build media list finished, return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 121
    .end local v0           #notifyCode:I
    :cond_2e
    const/4 v0, 0x2

    goto :goto_a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/arcsoft/quickview/MediaList$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 112
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 113
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList$1;->this$0:Lcom/arcsoft/quickview/MediaList;

    #getter for: Lcom/arcsoft/quickview/MediaList;->mListener:Lcom/arcsoft/quickview/MediaList$OnMediaListListener;
    invoke-static {v0}, Lcom/arcsoft/quickview/MediaList;->access$100(Lcom/arcsoft/quickview/MediaList;)Lcom/arcsoft/quickview/MediaList$OnMediaListListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/arcsoft/quickview/MediaList$OnMediaListListener;->onNotify(I)V

    .line 115
    invoke-static {}, Lcom/arcsoft/quickview/MediaList;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Build media list started"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
