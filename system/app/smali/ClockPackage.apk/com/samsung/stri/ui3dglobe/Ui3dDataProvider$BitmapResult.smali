.class Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;
.super Ljava/lang/Object;
.source "Ui3dDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapResult"
.end annotation


# instance fields
.field height:I

.field isSucceeded:Z

.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

.field width:I


# direct methods
.method private constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1154
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    .line 1156
    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    .line 1157
    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->isSucceeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1154
    invoke-direct {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    return-void
.end method
