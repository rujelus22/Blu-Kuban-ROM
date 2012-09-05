.class final Lcom/google/android/youtube/core/model/Subtitle$Line;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final endTime:I

.field public final startTime:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subtitle$Line;->text:Ljava/lang/String;

    .line 69
    iput p2, p0, Lcom/google/android/youtube/core/model/Subtitle$Line;->startTime:I

    .line 70
    iput p3, p0, Lcom/google/android/youtube/core/model/Subtitle$Line;->endTime:I

    .line 71
    return-void
.end method
