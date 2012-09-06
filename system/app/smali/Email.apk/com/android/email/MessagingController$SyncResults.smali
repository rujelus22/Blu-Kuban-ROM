.class Lcom/android/email/MessagingController$SyncResults;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncResults"
.end annotation


# instance fields
.field public final mAddedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mTotalMessages:I


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .registers 5
    .parameter "totalMessages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2178
    .local p2, addedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2179
    if-nez p2, :cond_d

    .line 2180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addedMessages must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2182
    :cond_d
    iput p1, p0, Lcom/android/email/MessagingController$SyncResults;->mTotalMessages:I

    .line 2183
    iput-object p2, p0, Lcom/android/email/MessagingController$SyncResults;->mAddedMessages:Ljava/util/ArrayList;

    .line 2184
    return-void
.end method
