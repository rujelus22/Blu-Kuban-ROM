.class Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$2;
.super Ljava/lang/Object;
.source "Ui3dDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->OnCityTouched(I)V
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
    .line 228
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$600(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

    move-result-object v0

    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;->onCityTouched(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method
