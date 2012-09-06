.class public abstract LsB;
.super Ljava/lang/Object;
.source "EntriesGrouper.java"

# interfaces
.implements LsN;


# instance fields
.field private a:I

.field a:Landroid/database/Cursor;

.field protected final a:Ljava/lang/String;

.field private final a:LsC;


# direct methods
.method constructor <init>(Ljava/lang/String;LsC;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, LsB;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, LsB;->a:LsC;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a()LLV;
    .registers 2

    .prologue
    .line 55
    sget-object v0, LMk;->e:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()Landroid/widget/SectionIndexer;
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, LsB;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, LsB;->a:Landroid/database/Cursor;

    .line 83
    invoke-virtual {p0}, LsB;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LsB;->a:I

    .line 84
    return-void
.end method

.method public abstract b()I
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, LsB;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, LsB;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LsB;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LsB;->a:LsC;

    invoke-virtual {v1}, LsC;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
