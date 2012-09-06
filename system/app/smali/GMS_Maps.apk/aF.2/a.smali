.class public Laf/a;
.super Laf/k;
.source "SourceFile"


# static fields
.field public static final a:Laf/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Laf/a;

    invoke-direct {v0}, Laf/a;-><init>()V

    sput-object v0, Laf/a;->a:Laf/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Laf/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 20
    const v0, 0x13d623

    return v0
.end method
