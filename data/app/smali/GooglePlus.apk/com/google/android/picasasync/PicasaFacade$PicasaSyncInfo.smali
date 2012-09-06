.class Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;
.super Ljava/lang/Object;
.source "PicasaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PicasaSyncInfo"
.end annotation


# instance fields
.field public final authority:Ljava/lang/String;

.field public enableDownSync:Z

.field public final packageName:Ljava/lang/String;

.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5
    .parameter "packageName"
    .parameter "authority"
    .parameter "priority"
    .parameter "enableDownsync"

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->packageName:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->authority:Ljava/lang/String;

    .line 179
    iput p3, p0, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->priority:I

    .line 180
    iput-boolean p4, p0, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->enableDownSync:Z

    .line 181
    return-void
.end method
