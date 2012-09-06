.class public interface abstract Lcom/googlex/common/graphics/IconProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/common/util/MemUtil$MemoryUser;


# static fields
.field public static final ALIGN_BASELINE:I = 0x3

.field public static final ALIGN_BOTTOM:I = 0x1

.field public static final ALIGN_CENTER:I = 0x2

.field public static final ALIGN_TOP:I


# virtual methods
.method public abstract drawIcon(CLcom/googlex/common/graphics/GoogleGraphics;II)Z
.end method

.method public abstract getIcon(C)Lcom/googlex/common/graphics/GoogleImage;
.end method

.method public abstract getIconAlignment(C)I
.end method

.method public abstract getIconHeight(C)I
.end method

.method public abstract getIconWidth(C)I
.end method

.method public abstract getSupportedIconKeys()Ljava/lang/String;
.end method

.method public abstract hasIcon(C)Z
.end method
