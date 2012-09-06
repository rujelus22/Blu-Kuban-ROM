.class Lcom/google/android/picasastore/FIFEUtil$Joiner;
.super Ljava/lang/Object;
.source "FIFEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/FIFEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Joiner"
.end annotation


# instance fields
.field private final separator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "separator"

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/google/android/picasastore/FIFEUtil$Joiner;->separator:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public static on(Ljava/lang/String;)Lcom/google/android/picasastore/FIFEUtil$Joiner;
    .registers 2
    .parameter "separator"

    .prologue
    .line 333
    new-instance v0, Lcom/google/android/picasastore/FIFEUtil$Joiner;

    invoke-direct {v0, p0}, Lcom/google/android/picasastore/FIFEUtil$Joiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 346
    .local p2, parts:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 347
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 348
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/picasastore/FIFEUtil$Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 349
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 350
    iget-object v1, p0, Lcom/google/android/picasastore/FIFEUtil$Joiner;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/picasastore/FIFEUtil$Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 354
    :cond_2c
    return-object p1
.end method

.method public final join(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, parts:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/picasastore/FIFEUtil$Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "part"

    .prologue
    .line 367
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1
    :goto_6
    return-object p1

    .restart local p1
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method
