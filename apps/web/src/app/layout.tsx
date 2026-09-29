import type { ReactNode } from 'react';
import './globals.css';

export const metadata = {
  title: 'Rainyday Web',
  description: 'Web app root route',
};

export default function RootLayout({ children }: { children: ReactNode }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
