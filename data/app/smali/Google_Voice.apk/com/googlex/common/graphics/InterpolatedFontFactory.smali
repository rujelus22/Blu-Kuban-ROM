.class public abstract Lcom/googlex/common/graphics/InterpolatedFontFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/common/graphics/FontFactory;


# instance fields
.field private iconProvider:Lcom/googlex/common/graphics/IconProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createWrappedFont(Lcom/googlex/common/graphics/GoogleFont;)Lcom/googlex/common/graphics/GoogleFont;
    .registers 4

    invoke-virtual {p0}, Lcom/googlex/common/graphics/InterpolatedFontFactory;->getIconProvider()Lcom/googlex/common/graphics/IconProvider;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Lcom/googlex/common/graphics/InterpolatedGoogleFont;

    invoke-virtual {p0}, Lcom/googlex/common/graphics/InterpolatedFontFactory;->getIconProvider()Lcom/googlex/common/graphics/IconProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/googlex/common/graphics/InterpolatedGoogleFont;-><init>(Lcom/googlex/common/graphics/GoogleFont;Lcom/googlex/common/graphics/IconProvider;)V

    move-object p1, v0

    goto :goto_6
.end method

.method public getIconProvider()Lcom/googlex/common/graphics/IconProvider;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/graphics/InterpolatedFontFactory;->iconProvider:Lcom/googlex/common/graphics/IconProvider;

    return-object v0
.end method

.method public setIconProvider(Lcom/googlex/common/graphics/IconProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/googlex/common/graphics/InterpolatedFontFactory;->iconProvider:Lcom/googlex/common/graphics/IconProvider;

    return-void
.end method
