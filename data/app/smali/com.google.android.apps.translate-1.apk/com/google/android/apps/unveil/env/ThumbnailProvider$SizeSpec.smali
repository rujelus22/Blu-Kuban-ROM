.class public Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;
.super Ljava/lang/Object;
.source "ThumbnailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/ThumbnailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeDpSpec;,
        Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;
    }
.end annotation


# static fields
.field public static final FIFE_DEFAULT:Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec; = null

.field private static final FIFE_MAX_SIZE_PX:I = 0x640

.field public static final FIFE_ORIGINAL:Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;

.field public static final ORIGINAL:Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x640

    const/16 v1, 0x50

    .line 150
    new-instance v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;->ORIGINAL:Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;

    .line 156
    new-instance v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeDpSpec;

    invoke-direct {v0, v1, v1}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeDpSpec;-><init>(II)V

    sput-object v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;->FIFE_DEFAULT:Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;

    .line 166
    new-instance v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;

    invoke-direct {v0, v2, v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;-><init>(II)V

    sput-object v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;->FIFE_ORIGINAL:Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static makeCustomFifeSpec(II)Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;
    .registers 3
    .parameter "widthDp"
    .parameter "heightDp"

    .prologue
    .line 173
    new-instance v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeDpSpec;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeDpSpec;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getSizedUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "c"
    .parameter "baseUrl"

    .prologue
    .line 50
    return-object p2
.end method
