.class public abstract Lcom/android/inputmethod/compat/AbstractCompatWrapper;
.super Ljava/lang/Object;
.source "AbstractCompatWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/android/inputmethod/compat/AbstractCompatWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/AbstractCompatWrapper;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_c

    .line 27
    sget-object v0, Lcom/android/inputmethod/compat/AbstractCompatWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Invalid input to AbstructCompatWrapper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_c
    iput-object p1, p0, Lcom/android/inputmethod/compat/AbstractCompatWrapper;->mObj:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public getOriginalObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/inputmethod/compat/AbstractCompatWrapper;->mObj:Ljava/lang/Object;

    return-object v0
.end method

.method public hasOriginalObject()Z
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/inputmethod/compat/AbstractCompatWrapper;->mObj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
