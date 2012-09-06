.class public Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;
.super Ljava/lang/Object;
.source "LoadSkins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LoadSkins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkinInfo"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mPackageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;Landroid/content/Context;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->mPackageContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPackageContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->mPackageContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSkinName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method
