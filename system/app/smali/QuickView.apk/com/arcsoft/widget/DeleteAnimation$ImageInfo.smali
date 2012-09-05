.class Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
.super Ljava/lang/Object;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/DeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageInfo"
.end annotation


# instance fields
.field public mImgDisplayHeight:I

.field public mImgDisplayWidth:I

.field final synthetic this$0:Lcom/arcsoft/widget/DeleteAnimation;


# direct methods
.method public constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;II)V
    .registers 4
    .parameter
    .parameter "width"
    .parameter "height"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p2, p0, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    .line 61
    iput p3, p0, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    .line 62
    return-void
.end method
