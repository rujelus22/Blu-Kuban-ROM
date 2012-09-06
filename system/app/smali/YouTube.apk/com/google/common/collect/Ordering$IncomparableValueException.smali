.class Lcom/google/common/collect/Ordering$IncomparableValueException;
.super Ljava/lang/ClassCastException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot compare value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/google/common/collect/Ordering$IncomparableValueException;->value:Ljava/lang/Object;

    .line 179
    return-void
.end method
