.class public Lbk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z

.field private static final c:Lbk/i;


# instance fields
.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lbk/i;->a:Z

    .line 131
    new-instance v0, Lbk/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbk/i;-><init>(Z)V

    sput-object v0, Lbk/i;->c:Lbk/i;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbk/i;->b:Ljava/util/Map;

    .line 113
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbk/i;->b:Ljava/util/Map;

    .line 130
    return-void
.end method

.method public static a()Lbk/i;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lbk/i;->c:Lbk/i;

    return-object v0
.end method
