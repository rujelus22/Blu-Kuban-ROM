.class public interface abstract Lcom/google/android/apps/plus/views/ItemClickListener;
.super Ljava/lang/Object;
.source "ItemClickListener.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableMediaImage$MediaImageClickListener;
.implements Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;
.implements Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;


# virtual methods
.method public abstract onLocationClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;)V
.end method

.method public abstract onMediaImageClick(Ljava/lang/String;Lcom/google/android/apps/plus/content/DbMedia;I)V
.end method

.method public abstract onSpanClick(Landroid/text/style/URLSpan;)V
.end method

.method public abstract onUserImageClick(JLjava/lang/String;)V
.end method
