.class public interface abstract Lcom/sec/android/socialhub/contents/EmailContents$HostAuthColumns;
.super Ljava/lang/Object;
.source "EmailContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/contents/EmailContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HostAuthColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "content://com.android.email.provider//hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/contents/EmailContents$HostAuthColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
