.class public final Lcom/dropbox/android/util/E;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static a:I


# instance fields
.field protected final b:Ldbxyzptlk/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/16 v0, 0x32

    sput v0, Lcom/dropbox/android/util/E;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/dropbox/android/util/F;

    sget v1, Lcom/dropbox/android/util/E;->a:I

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/util/F;-><init>(Lcom/dropbox/android/util/E;I)V

    iput-object v0, p0, Lcom/dropbox/android/util/E;->b:Ldbxyzptlk/c/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/dropbox/android/util/D;
    .registers 3
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dropbox/android/util/E;->b:Ldbxyzptlk/c/c;

    invoke-virtual {v0, p1}, Ldbxyzptlk/c/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/D;

    .line 20
    if-eqz v0, :cond_d

    .line 21
    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->a()V

    .line 23
    :cond_d
    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/dropbox/android/util/D;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p2}, Lcom/dropbox/android/util/D;->a()V

    .line 28
    iget-object v0, p0, Lcom/dropbox/android/util/E;->b:Ldbxyzptlk/c/c;

    invoke-virtual {v0, p1, p2}, Ldbxyzptlk/c/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method
