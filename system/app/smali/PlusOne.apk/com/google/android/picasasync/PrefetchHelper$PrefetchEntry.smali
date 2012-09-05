.class public final Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;
.super Ljava/lang/Object;
.source "PrefetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PrefetchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrefetchEntry"
.end annotation


# instance fields
.field public final filepath:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "filename"
    .parameter "type"

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p1, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    .line 592
    iput p2, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->type:I

    .line 593
    return-void
.end method
