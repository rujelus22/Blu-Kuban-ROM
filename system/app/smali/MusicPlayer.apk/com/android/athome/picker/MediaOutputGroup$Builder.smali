.class public Lcom/android/athome/picker/MediaOutputGroup$Builder;
.super Ljava/lang/Object;
.source "MediaOutputGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/MediaOutputGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private mIsMuted:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private final mType:I

.field private mVolume:F


# direct methods
.method public constructor <init>(Lcom/android/athome/picker/MediaOutput;)V
    .registers 3
    .parameter "output"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mId:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mType:I

    .line 102
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mName:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mStatus:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mVolume:F

    .line 105
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mIsMuted:Z

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/athome/picker/MediaOutputGroup$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/athome/picker/MediaOutputGroup$Builder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/athome/picker/MediaOutputGroup$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/athome/picker/MediaOutputGroup$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/athome/picker/MediaOutputGroup$Builder;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mVolume:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/athome/picker/MediaOutputGroup$Builder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/athome/picker/MediaOutputGroup$Builder;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup$Builder;->mItems:Ljava/util/List;

    return-object v0
.end method
