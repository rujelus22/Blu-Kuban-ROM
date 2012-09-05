.class public Lcom/infraware/office/evengine/EV$FONT_INFO;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FONT_INFO"
.end annotation


# instance fields
.field public nBColor:I

.field public nFColor:I

.field public nFSize:I

.field public nFontAtt:I

.field public nHeight:I

.field public nMaskFontAtt:I

.field public nType:I

.field public nWidth:I

.field public szFontName:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 2
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$FONT_INFO;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 413
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$FONT_INFO;->szFontName:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nHeight:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nWidth:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nBColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFColor:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nMaskFontAtt:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFontAtt:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFSize:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nType:I

    .line 415
    return-void
.end method
