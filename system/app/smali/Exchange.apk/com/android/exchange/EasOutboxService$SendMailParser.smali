.class Lcom/android/exchange/EasOutboxService$SendMailParser;
.super Lcom/android/exchange/adapter/Parser;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasOutboxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendMailParser"
.end annotation


# instance fields
.field private final mStartTag:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .parameter "in"
    .parameter "startTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 168
    iput p2, p0, Lcom/android/exchange/EasOutboxService$SendMailParser;->mStartTag:I

    .line 169
    return-void
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/android/exchange/EasOutboxService$SendMailParser;->mStatus:I

    return v0
.end method

.method public parse()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0, v2}, Lcom/android/exchange/EasOutboxService$SendMailParser;->nextTag(I)I

    move-result v0

    iget v1, p0, Lcom/android/exchange/EasOutboxService$SendMailParser;->mStartTag:I

    if-eq v0, v1, :cond_f

    .line 181
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 183
    :cond_f
    :goto_f
    invoke-virtual {p0, v2}, Lcom/android/exchange/EasOutboxService$SendMailParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    .line 184
    iget v0, p0, Lcom/android/exchange/EasOutboxService$SendMailParser;->tag:I

    const/16 v1, 0x552

    if-ne v0, v1, :cond_23

    .line 185
    invoke-virtual {p0}, Lcom/android/exchange/EasOutboxService$SendMailParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/EasOutboxService$SendMailParser;->mStatus:I

    goto :goto_f

    .line 187
    :cond_23
    invoke-virtual {p0}, Lcom/android/exchange/EasOutboxService$SendMailParser;->skipTag()V

    goto :goto_f

    .line 190
    :cond_27
    const/4 v0, 0x1

    return v0
.end method
