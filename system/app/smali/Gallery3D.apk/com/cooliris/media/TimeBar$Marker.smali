.class final Lcom/cooliris/media/TimeBar$Marker;
.super Ljava/lang/Object;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/TimeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marker"
.end annotation


# instance fields
.field public final day:I

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public final month:I

.field public final x:F

.field public final year:I


# direct methods
.method constructor <init>(FJIIIII)V
    .registers 10
    .parameter "x"
    .parameter "time"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "type"
    .parameter "expectedCapacity"

    .prologue
    .line 649
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Lcom/cooliris/media/TimeBar$Marker;->x:F

    .line 651
    iput p4, p0, Lcom/cooliris/media/TimeBar$Marker;->year:I

    .line 652
    iput p5, p0, Lcom/cooliris/media/TimeBar$Marker;->month:I

    .line 653
    iput p6, p0, Lcom/cooliris/media/TimeBar$Marker;->day:I

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/cooliris/media/TimeBar$Marker;->items:Ljava/util/ArrayList;

    .line 655
    return-void
.end method
