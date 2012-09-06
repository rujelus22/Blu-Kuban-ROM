.class public LMl;
.super Ljava/lang/Object;
.source "FieldDefinition.java"


# instance fields
.field public final a:LLV;

.field public final a:LMa;

.field public final a:LMo;

.field public final a:LMp;

.field public final a:Ljava/lang/Object;

.field public final a:Ljava/lang/String;

.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Z

.field public final b:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;LMp;ZLjava/util/Set;ZLjava/lang/Object;LMa;LLV;LMo;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LMp;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Object;",
            "LMa;",
            "LLV;",
            "LMo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-static {p9}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iput-object p1, p0, LMl;->a:Ljava/lang/String;

    .line 231
    iput-object p2, p0, LMl;->a:LMp;

    .line 232
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LMl;->a:Ljava/util/Set;

    .line 233
    iput-boolean p5, p0, LMl;->b:Z

    .line 234
    iput-object p6, p0, LMl;->a:Ljava/lang/Object;

    .line 235
    iput-object p7, p0, LMl;->a:LMa;

    .line 236
    iput-object p8, p0, LMl;->a:LLV;

    .line 237
    iput-object p9, p0, LMl;->a:LMo;

    .line 238
    iput-boolean p3, p0, LMl;->a:Z

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;LMp;ZLjava/util/Set;ZLjava/lang/Object;LMa;LLV;LMo;LMm;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct/range {p0 .. p9}, LMl;-><init>(Ljava/lang/String;LMp;ZLjava/util/Set;ZLjava/lang/Object;LMa;LLV;LMo;)V

    return-void
.end method
