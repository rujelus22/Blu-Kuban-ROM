.class Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;
.super Ljava/lang/Object;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleSearchItem"
.end annotation


# instance fields
.field protected text:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter "type"
    .parameter "text"

    .prologue
    .line 3623
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3619
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->type:I

    .line 3621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->text:Ljava/lang/String;

    .line 3624
    iput p1, p0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->type:I

    .line 3625
    iput-object p2, p0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->text:Ljava/lang/String;

    .line 3626
    return-void
.end method
