.class Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;
.super Ljava/lang/Object;
.source "Ui3dDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->OnRotateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;


# direct methods
.method constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$300(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLatAngle:I
    invoke-static {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$200(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;->onRotationChanged(I)V

    .line 206
    return-void
.end method
