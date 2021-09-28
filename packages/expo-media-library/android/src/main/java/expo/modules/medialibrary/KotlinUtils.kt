package expo.modules.medialibrary

/**
 * Returns receiver, or block result if the receiver is `null`
 */
inline fun <T> T?.ifNull(block: () -> T): T {
  if (this == null) {
    return block()
  }
  return this
}

/**
 * If the receiver is instance of `T`, returns the receiver, otherwise returns `null`
 */
inline fun <reified T> Any?.takeIfInstanceOf(): T? = if (this is T) this else null
