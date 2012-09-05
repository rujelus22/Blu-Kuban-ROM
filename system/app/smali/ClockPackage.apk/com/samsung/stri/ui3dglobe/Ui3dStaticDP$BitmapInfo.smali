.class public Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;
.super Ljava/lang/Object;
.source "Ui3dStaticDP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapInfo"
.end annotation


# instance fields
.field private m_height:I

.field private m_lastBmp:Landroid/graphics/Bitmap;

.field private m_originalBmp:Landroid/graphics/Bitmap;

.field private m_width:I

.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;


# direct methods
.method public constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;

    .line 14
    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;

    .line 15
    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I

    .line 16
    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I

    return p1
.end method
