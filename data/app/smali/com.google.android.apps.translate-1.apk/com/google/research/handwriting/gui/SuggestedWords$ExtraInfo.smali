.class public Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/SuggestedWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraInfo"
.end annotation


# static fields
.field private static final EMPTY_INFO:Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;


# instance fields
.field private final mInfo:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 146
    new-instance v0, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;->EMPTY_INFO:Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;->mInfo:Ljava/lang/CharSequence;

    .line 152
    return-void
.end method

.method static synthetic access$000()Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;
    .registers 1

    .prologue
    .line 145
    sget-object v0, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;->EMPTY_INFO:Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    return-object v0
.end method


# virtual methods
.method public getInfo()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;->mInfo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasInfo()Z
    .registers 2

    .prologue
    .line 155
    sget-object v0, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;->EMPTY_INFO:Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;->mInfo:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
