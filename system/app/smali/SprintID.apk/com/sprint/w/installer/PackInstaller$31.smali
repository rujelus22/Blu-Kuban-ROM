.class synthetic Lcom/sprint/w/installer/PackInstaller$31;
.super Ljava/lang/Object;
.source "PackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sprint$w$installer$PsiCode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1259
    invoke-static {}, Lcom/sprint/w/installer/PsiCode;->values()[Lcom/sprint/w/installer/PsiCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sprint/w/installer/PackInstaller$31;->$SwitchMap$com$sprint$w$installer$PsiCode:[I

    :try_start_9
    sget-object v0, Lcom/sprint/w/installer/PackInstaller$31;->$SwitchMap$com$sprint$w$installer$PsiCode:[I

    sget-object v1, Lcom/sprint/w/installer/PsiCode;->INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/PsiCode;

    invoke-virtual {v1}, Lcom/sprint/w/installer/PsiCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
