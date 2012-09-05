.class Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$3;
.super Ljava/lang/Object;
.source "Ui3dDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->OnZoomChanged(I)V
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
    .line 291
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$3;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$3;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$800(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

    move-result-object v0

    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$700()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;->onZoomChanged(I)V

    .line 294
    return-void
.end method
