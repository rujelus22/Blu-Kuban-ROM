.class public Lcom/android/exchange/CommandStatusException;
.super Lcom/android/exchange/EasException;
.source "CommandStatusException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/CommandStatusException$CommandStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mItemId:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/exchange/EasException;-><init>()V

    .line 150
    const/4 v0, 0x6

    if-ne p1, v0, :cond_e

    .line 151
    const/16 v0, 0xb1

    iput v0, p0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 154
    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/CommandStatusException;->mItemId:Ljava/lang/String;

    .line 155
    return-void

    .line 153
    :cond_e
    iput p1, p0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    goto :goto_a
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter "status"
    .parameter "itemId"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/exchange/EasException;-><init>()V

    .line 158
    const/4 v0, 0x6

    if-ne p1, v0, :cond_d

    .line 159
    const/16 v0, 0xb1

    iput v0, p0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 162
    :goto_a
    iput-object p2, p0, Lcom/android/exchange/CommandStatusException;->mItemId:Ljava/lang/String;

    .line 163
    return-void

    .line 161
    :cond_d
    iput p1, p0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    goto :goto_a
.end method
