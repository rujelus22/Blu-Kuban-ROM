.class public Lcom/infraware/office/evengine/EV$FONT_DATA;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FONT_DATA"
.end annotation


# instance fields
.field public bBold:I

.field public bColor:J

.field public bEmboss:I

.field public bEngrave:I

.field public bItalic:I

.field public bOutLine:I

.field public bStrikeout:I

.field public bUnderLine:I

.field public fColor:J

.field public fName:Ljava/lang/String;

.field public fSize:I

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 2
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$FONT_DATA;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
