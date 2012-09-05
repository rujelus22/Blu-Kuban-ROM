.class public abstract Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
.super Ljava/lang/Object;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/config/PreferenceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SharedPreference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mFile:Lcom/google/android/finsky/config/PreferenceFile;

.field final mKey:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "file"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/config/PreferenceFile;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, this:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<TT;>;"
    .local p3, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mFile:Lcom/google/android/finsky/config/PreferenceFile;

    .line 240
    iput-object p2, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    .line 241
    iput-object p3, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mDefaultValue:Ljava/lang/Object;

    .line 242
    return-void
.end method


# virtual methods
.method public final exists()Z
    .registers 3

    .prologue
    .line 256
    .local p0, this:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mFile:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, this:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mFile:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->read(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    .local p0, this:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, this:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mFile:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    .line 264
    invoke-static {v0}, Lcom/google/android/finsky/config/PreferenceFile;->commit(Landroid/content/SharedPreferences$Editor;)Z

    .line 265
    return-void
.end method

.method protected abstract read(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 269
    .local p0, this:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mFile:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/config/PreferenceFile;->commit(Landroid/content/SharedPreferences$Editor;)Z

    .line 270
    return-void
.end method

.method protected abstract write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "TT;)V"
        }
    .end annotation
.end method
