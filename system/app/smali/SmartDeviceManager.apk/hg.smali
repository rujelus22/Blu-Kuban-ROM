.class public Lhg;
.super Lfe;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhg$a;
    }
.end annotation


# instance fields
.field protected b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lhg$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lfe;-><init>(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfa;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lfe;-><init>(Ljava/lang/String;Lfa;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lfe;-><init>(Ljava/lang/String;Lfa;Ljava/lang/Throwable;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lfe;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method public static a(Lfd;Ljava/lang/String;)Lhg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 160
    new-instance v0, Lhg;

    invoke-virtual {p0}, Lfd;->g()Lfa;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lhg;-><init>(Ljava/lang/String;Lfa;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;Lhg$a;)Lhg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 205
    instance-of v0, p0, Lhg;

    if-eqz v0, :cond_b

    .line 206
    check-cast p0, Lhg;

    move-object v0, p0

    .line 217
    :goto_7
    invoke-virtual {v0, p1}, Lhg;->a(Lhg$a;)V

    .line 218
    return-object v0

    .line 208
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_38

    .line 213
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_38
    new-instance v1, Lhg;

    invoke-direct {v1, v0, p0}, Lhg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_7
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lhg;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    new-instance v0, Lhg$a;

    invoke-direct {v0, p1, p2}, Lhg$a;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lhg;->a(Ljava/lang/Throwable;Lhg$a;)Lhg;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lhg;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    new-instance v0, Lhg$a;

    invoke-direct {v0, p1, p2}, Lhg$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lhg;->a(Ljava/lang/Throwable;Lhg$a;)Lhg;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lhg;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 319
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhg$a;

    invoke-virtual {p0}, Lhg$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 322
    const-string v1, "->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 325
    :cond_25
    return-void
.end method


# virtual methods
.method public final a(Lhg$a;)V
    .registers 4
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lhg;->b:Ljava/util/LinkedList;

    if-nez v0, :cond_b

    .line 257
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lhg;->b:Ljava/util/LinkedList;

    .line 263
    :cond_b
    iget-object v0, p0, Lhg;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1a

    .line 264
    iget-object v0, p0, Lhg;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 266
    :cond_1a
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 241
    new-instance v0, Lhg$a;

    invoke-direct {v0, p1, p2}, Lhg$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v0}, Lhg;->a(Lhg$a;)V

    .line 243
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 284
    invoke-super {p0}, Lfe;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lhg;->b:Ljava/util/LinkedList;

    if-nez v1, :cond_9

    .line 301
    :goto_8
    return-object v0

    .line 292
    :cond_9
    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    :goto_10
    const-string v1, " (through reference chain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-direct {p0, v0}, Lhg;->a(Ljava/lang/StringBuilder;)V

    .line 300
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 292
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lhg;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
