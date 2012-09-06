.class public Lcom/googlex/common/graphics/android/AndroidAshmemImageFactory;
.super Lcom/googlex/common/graphics/android/AndroidImageFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlex/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlex/common/graphics/android/AndroidImageFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createImage([BII)Lcom/googlex/common/graphics/GoogleImage;
    .registers 5

    new-instance v0, Lcom/googlex/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;

    invoke-direct {v0, p1, p2, p3}, Lcom/googlex/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;-><init>([BII)V

    return-object v0
.end method
