.class public abstract Lcom/google/android/maps/driveabout/vector/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final F:Ln/af;

.field private static final G:Ln/aj;

.field private static final H:Ln/aj;

.field private static final I:Ln/aj;

.field private static final J:Ln/ak;

.field private static final K:Ln/ag;

.field private static final L:Ln/ag;

.field private static final M:Ln/ag;

.field public static final a:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final b:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final c:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final d:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final e:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final f:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final g:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final h:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final i:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final j:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final k:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final l:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final m:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final n:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final o:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final p:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final q:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final r:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final s:Lcom/google/android/maps/driveabout/vector/dg;

.field public static final t:Lcom/google/android/maps/driveabout/vector/dg;

.field private static final z:Ljava/util/Map;


# instance fields
.field private final A:I

.field private final B:Z

.field private final C:Z

.field private final D:Z

.field private final E:Lr/aB;

.field public final u:I

.field public final v:I

.field public final w:Z

.field public final x:I

.field public final y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0xc

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->z:Ljava/util/Map;

    .line 68
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dj;

    const/16 v3, 0xa

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dj;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dj;->f(Z)Lcom/google/android/maps/driveabout/vector/dw;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dw;->d(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    .line 73
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dj;

    const/16 v3, 0x16

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dj;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dj;->f(Z)Lcom/google/android/maps/driveabout/vector/dw;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dw;->d(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->b:Lcom/google/android/maps/driveabout/vector/dg;

    .line 78
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dj;

    const/16 v3, 0x14

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dj;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dj;->f(Z)Lcom/google/android/maps/driveabout/vector/dw;

    move-result-object v0

    const-string v3, "_tran_base"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dw;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->d(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->c:Lcom/google/android/maps/driveabout/vector/dg;

    .line 84
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dm;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dm;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/dm;->c(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->d:Lcom/google/android/maps/driveabout/vector/dg;

    .line 88
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dm;

    invoke-direct {v0, v9, v8}, Lcom/google/android/maps/driveabout/vector/dm;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const-string v3, "_ter"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dm;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/dk;->c(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->e:Lcom/google/android/maps/driveabout/vector/dg;

    .line 93
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dw;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const-string v3, "_traf"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dw;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->f:Lcom/google/android/maps/driveabout/vector/dg;

    .line 96
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dw;

    const/16 v3, 0x17

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const-string v3, "_traf"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dw;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->g:Lcom/google/android/maps/driveabout/vector/dg;

    .line 99
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dr;

    const/16 v3, 0x8

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dr;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dr;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->h:Lcom/google/android/maps/driveabout/vector/dg;

    .line 101
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dt;

    const/16 v3, 0xb

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dt;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dt;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->i:Lcom/google/android/maps/driveabout/vector/dg;

    .line 107
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dj;

    const/16 v3, 0x12

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dj;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dj;->a(Z)Lcom/google/android/maps/driveabout/vector/dj;

    move-result-object v0

    const-string v3, "_vec_bic"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dj;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->j:Lcom/google/android/maps/driveabout/vector/dg;

    .line 118
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dm;

    const/4 v3, 0x7

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dm;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dm;->a(I)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    const-string v3, "_ter_bic"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dk;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->k:Lcom/google/android/maps/driveabout/vector/dg;

    .line 122
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dm;

    const/4 v3, 0x6

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dm;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dm;->a(I)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    const-string v3, "_hy_bic"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dk;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->l:Lcom/google/android/maps/driveabout/vector/dg;

    .line 126
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dw;

    const/16 v3, 0xd

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const-string v3, "_tran"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dw;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->m:Lcom/google/android/maps/driveabout/vector/dg;

    .line 130
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dw;

    const/16 v3, 0xe

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dw;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    const-string v3, "_inaka"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dk;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->n:Lcom/google/android/maps/driveabout/vector/dg;

    .line 134
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dp;

    const/16 v3, 0xf

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dp;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const-string v3, "_labl"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dp;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->d(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->o:Lcom/google/android/maps/driveabout/vector/dg;

    .line 139
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dp;

    const/16 v3, 0x15

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dp;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const-string v3, "_tran_labl"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dp;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->d(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->p:Lcom/google/android/maps/driveabout/vector/dg;

    .line 144
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dw;

    const/16 v3, 0x10

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const-string v3, "_psm"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dw;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->b(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->q:Lcom/google/android/maps/driveabout/vector/dg;

    .line 149
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dw;

    const/16 v3, 0x11

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const-string v3, "_related"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dw;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->b(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->r:Lcom/google/android/maps/driveabout/vector/dg;

    .line 153
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dw;

    const/16 v3, 0x18

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const-string v3, "_high"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dw;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->b(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/dk;->e(Z)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->s:Lcom/google/android/maps/driveabout/vector/dg;

    .line 158
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dw;

    const/16 v3, 0x19

    invoke-direct {v0, v3, v8}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    const-string v3, "_api"

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/dw;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dk;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->t:Lcom/google/android/maps/driveabout/vector/dg;

    .line 207
    new-instance v0, Ln/af;

    const/4 v3, 0x0

    new-array v4, v2, [I

    invoke-direct {v0, v2, v3, v4, v2}, Ln/af;-><init>(IF[II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->F:Ln/af;

    .line 208
    new-instance v0, Ln/aj;

    const/high16 v3, -0x100

    sget-object v4, Lcom/google/android/maps/driveabout/vector/dg;->F:Ln/af;

    invoke-direct {v0, v3, v4}, Ln/aj;-><init>(ILn/af;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->G:Ln/aj;

    .line 209
    new-instance v0, Ln/aj;

    const v3, -0xffff01

    sget-object v4, Lcom/google/android/maps/driveabout/vector/dg;->F:Ln/af;

    invoke-direct {v0, v3, v4}, Ln/aj;-><init>(ILn/af;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->H:Ln/aj;

    .line 210
    new-instance v0, Ln/aj;

    const/high16 v3, -0x1

    sget-object v4, Lcom/google/android/maps/driveabout/vector/dg;->F:Ln/af;

    invoke-direct {v0, v3, v4}, Ln/aj;-><init>(ILn/af;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->I:Ln/aj;

    .line 211
    new-instance v0, Ln/ak;

    const/16 v3, 0xa

    const v4, 0x3f99999a

    const/high16 v5, 0x3f80

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ln/ak;-><init>(IIIFFI)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->J:Ln/ak;

    .line 213
    new-instance v0, Ln/ag;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/dg;->J:Ln/ak;

    sget-object v6, Lcom/google/android/maps/driveabout/vector/dg;->G:Ln/aj;

    move v2, v9

    move-object v3, v8

    move-object v4, v8

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Ln/ag;-><init>(II[I[Ln/af;Ln/ak;Ln/aj;Ln/af;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->K:Ln/ag;

    .line 216
    new-instance v0, Ln/ag;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/dg;->J:Ln/ak;

    sget-object v6, Lcom/google/android/maps/driveabout/vector/dg;->I:Ln/aj;

    move v2, v9

    move-object v3, v8

    move-object v4, v8

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Ln/ag;-><init>(II[I[Ln/af;Ln/ak;Ln/aj;Ln/af;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->L:Ln/ag;

    .line 219
    new-instance v0, Ln/ag;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/dg;->J:Ln/ak;

    sget-object v6, Lcom/google/android/maps/driveabout/vector/dg;->H:Ln/aj;

    move v2, v9

    move-object v3, v8

    move-object v4, v8

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Ln/ag;-><init>(II[I[Ln/af;Ln/ak;Ln/aj;Ln/af;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dg;->M:Ln/ag;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/dk;)V
    .registers 6
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dk;->a(Lcom/google/android/maps/driveabout/vector/dk;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->u:I

    .line 230
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dk;->b(Lcom/google/android/maps/driveabout/vector/dk;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->v:I

    .line 231
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dk;->c(Lcom/google/android/maps/driveabout/vector/dk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->y:Ljava/lang/String;

    .line 232
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dk;->d(Lcom/google/android/maps/driveabout/vector/dk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->w:Z

    .line 233
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dk;->e(Lcom/google/android/maps/driveabout/vector/dk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->B:Z

    .line 234
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dk;->f(Lcom/google/android/maps/driveabout/vector/dk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->C:Z

    .line 235
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dk;->g(Lcom/google/android/maps/driveabout/vector/dk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->D:Z

    .line 237
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->D:Z

    if-eqz v0, :cond_7e

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/dg;->l()Lr/aB;

    move-result-object v0

    :goto_35
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->E:Lr/aB;

    .line 241
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->u:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dg;->v:I

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->x:I

    .line 243
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->A:I

    .line 244
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->u:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dg;->v:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 245
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_80

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->z:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tile type with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already defined"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_7e
    const/4 v0, 0x0

    goto :goto_35

    .line 248
    :cond_80
    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->z:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_9d

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_9d

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Currently maximum 32 tile types allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_9d
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/dk;Lcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dg;-><init>(Lcom/google/android/maps/driveabout/vector/dk;)V

    return-void
.end method

.method public static a(I)Lcom/google/android/maps/driveabout/vector/dg;
    .registers 3
    .parameter

    .prologue
    .line 391
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->z:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method

.method static b()I
    .registers 2

    .prologue
    .line 356
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->h()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    .line 357
    const/16 v1, 0x80

    mul-int/lit8 v0, v0, 0x12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(I)I
    .registers 2
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/dg;->c(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/dg;)Z
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->B:Z

    return v0
.end method

.method static c()I
    .registers 2

    .prologue
    .line 368
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->h()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    .line 369
    const/16 v1, 0x100

    mul-int/lit8 v0, v0, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static c(I)I
    .registers 2
    .parameter

    .prologue
    .line 343
    const/16 v0, 0xa0

    if-le p0, v0, :cond_6

    const/4 v0, 0x3

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/vector/dg;)Z
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->C:Z

    return v0
.end method

.method public static e()Ljava/lang/Iterable;
    .registers 1

    .prologue
    .line 398
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Ln/ag;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->K:Ln/ag;

    return-object v0
.end method

.method static synthetic n()Ln/ag;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->L:Ln/ag;

    return-object v0
.end method

.method static synthetic o()Ln/ag;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->M:Ln/ag;

    return-object v0
.end method


# virtual methods
.method abstract a()I
.end method

.method public a(ILcom/google/android/maps/driveabout/vector/D;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 440
    return p1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)I
    .registers 4
    .parameter

    .prologue
    .line 259
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->A:I

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/dg;->A:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Ln/aa;)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lac/p;Landroid/content/Context;Ljava/util/Locale;Ljava/io/File;ZZ)Lr/aH;
.end method

.method public a(Ljava/lang/String;ZLr/t;)Lr/s;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->D:Z

    if-nez v0, :cond_6

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lr/aq;

    if-eqz p2, :cond_14

    const/4 v2, -0x1

    :goto_b
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dg;->E:Lr/aB;

    move-object v1, p1

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lr/aq;-><init>(Ljava/lang/String;ILr/aB;Lcom/google/android/maps/driveabout/vector/dg;Lr/t;)V

    goto :goto_5

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/dg;->a()I

    move-result v2

    goto :goto_b
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2
    .parameter

    .prologue
    .line 465
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 56
    check-cast p1, Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/dg;->a(Lcom/google/android/maps/driveabout/vector/dg;)I

    move-result v0

    return v0
.end method

.method public d()Lr/aE;
    .registers 3

    .prologue
    .line 378
    new-instance v0, Lr/aC;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dg;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lr/aC;-><init>(I)V

    return-object v0
.end method

.method public f()I
    .registers 3

    .prologue
    .line 405
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->u:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dg;->v:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 412
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->A:I

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public j()Lcom/google/android/maps/driveabout/vector/aJ;
    .registers 2

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ln/ag;
    .registers 2

    .prologue
    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract l()Lr/aB;
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_1d

    aget-object v3, v1, v0

    .line 422
    :try_start_e
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne p0, v4, :cond_1a

    .line 423
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_17} :catch_19

    move-result-object v0

    .line 429
    :goto_18
    return-object v0

    .line 425
    :catch_19
    move-exception v3

    .line 420
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 429
    :cond_1d
    const-string v0, "unknown"

    goto :goto_18
.end method
