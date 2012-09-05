.class Lcom/android/browser/SecAddBookmarkPage$Folder;
.super Ljava/lang/Object;
.source "SecAddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SecAddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Folder"
.end annotation


# instance fields
.field Id:J

.field Name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .parameter "name"
    .parameter "id"

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/browser/SecAddBookmarkPage$Folder;->Name:Ljava/lang/String;

    .line 151
    iput-wide p2, p0, Lcom/android/browser/SecAddBookmarkPage$Folder;->Id:J

    .line 152
    return-void
.end method
