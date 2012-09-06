.class public final Lcom/google/android/picasastore/FingerprintEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "FingerprintEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "fingerprints"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field public final contentUri:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        indexed = true
        value = "content_uri"
    .end annotation
.end field

.field public final rawFingerprint:[B
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "fingerprint"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/picasastore/FingerprintEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/picasastore/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/gallery3d/common/Fingerprint;)V
    .registers 4
    .parameter "contentUri"
    .parameter "fingerprint"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/picasastore/FingerprintEntry;->contentUri:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasastore/FingerprintEntry;->rawFingerprint:[B

    .line 41
    return-void
.end method
