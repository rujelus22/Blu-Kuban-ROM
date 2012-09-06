.class public final Lcom/google/common/base/Holder;
.super Ljava/lang/Object;
.source "Holder.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/annotations/Strongly;
    contact = "java-libraries-discuss"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/google/common/base/Holder;,"Lcom/google/common/base/Holder<TT;>;"
    .local p1, initialReference:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/common/base/Holder;->instance:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public static absent()Lcom/google/common/base/Holder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Holder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/google/common/base/Holder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Holder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/base/Holder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/Holder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, initialReference:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/google/common/base/Holder;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/Holder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static unset()Lcom/google/common/base/Holder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Holder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/google/common/base/Holder;->absent()Lcom/google/common/base/Holder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/google/common/base/Holder;,"Lcom/google/common/base/Holder<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Holder;->isPresent()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 108
    iget-object v0, p0, Lcom/google/common/base/Holder;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public isPresent()Z
    .registers 2

    .prologue
    .line 94
    .local p0, this:Lcom/google/common/base/Holder;,"Lcom/google/common/base/Holder<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Holder;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSet()Z
    .registers 2

    .prologue
    .line 169
    .local p0, this:Lcom/google/common/base/Holder;,"Lcom/google/common/base/Holder<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Holder;->isPresent()Z

    move-result v0

    return v0
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, this:Lcom/google/common/base/Holder;,"Lcom/google/common/base/Holder<TT;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TT;"
    const-string v0, "use orNull() instead of or(null)"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p0}, Lcom/google/common/base/Holder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/google/common/base/Holder;->instance:Ljava/lang/Object;

    .end local p1           #defaultValue:Ljava/lang/Object;,"TT;"
    :cond_d
    return-object p1
.end method

.method public orNull()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/google/common/base/Holder;,"Lcom/google/common/base/Holder<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Holder;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lcom/google/common/base/Holder;,"Lcom/google/common/base/Holder<TT;>;"
    .local p1, instance:Ljava/lang/Object;,"TT;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Holder;->setNullable(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public setNullable(Ljava/lang/Object;)V
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, this:Lcom/google/common/base/Holder;,"Lcom/google/common/base/Holder<TT;>;"
    .local p1, instance:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/google/common/base/Holder;->instance:Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 153
    .local p0, this:Lcom/google/common/base/Holder;,"Lcom/google/common/base/Holder<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Holder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Holder.of("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Holder;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    const-string v0, "Holder.absent()"

    goto :goto_21
.end method
