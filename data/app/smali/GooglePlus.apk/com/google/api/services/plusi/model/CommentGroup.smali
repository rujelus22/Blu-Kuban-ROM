.class public final Lcom/google/api/services/plusi/model/CommentGroup;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "CommentGroup.java"


# instance fields
.field public commentsAuthor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxTimestampUsec:Ljava/lang/Long;

.field public minTimestampUsec:Ljava/lang/Long;

.field public numComments:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
