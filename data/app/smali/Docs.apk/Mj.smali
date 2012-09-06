.class public LMj;
.super LMa;
.source "EntryTable.java"


# static fields
.field private static final a:LMj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, LMj;

    invoke-direct {v0}, LMj;-><init>()V

    sput-object v0, LMj;->a:LMj;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, LMa;-><init>()V

    .line 42
    return-void
.end method

.method public static a()LMj;
    .registers 1

    .prologue
    .line 37
    sget-object v0, LMj;->a:LMj;

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 208
    sget-object v0, LMk;->p:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p0}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()LMj;
    .registers 1

    .prologue
    .line 18
    sget-object v0, LMj;->a:LMj;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LMk;->p:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LkU;->h:LkU;

    invoke-virtual {v1}, LkU;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 215
    sget-object v0, LMk;->o:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p0}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LMk;->t:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 222
    sget-object v0, LMk;->n:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p0}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "Entry"

    return-object v0
.end method

.method a()[LMk;
    .registers 2

    .prologue
    .line 46
    invoke-static {}, LMk;->values()[LMk;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a()[Laga;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, LMj;->a()[LMk;

    move-result-object v0

    return-object v0
.end method
